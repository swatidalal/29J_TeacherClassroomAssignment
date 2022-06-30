using _29J_TeacherClassroomAssignment.ApiModel;
using ApiDbLayerTC;
using ApiDbLayerTC.Entities;
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace _29J_TeacherClassroomAssignment.Controllers
{
    [Route("[controller]/[action]")]
    [ApiController]
    public class TeachersController : ControllerBase
    {
        private readonly ApiDbContext _context;
        private readonly IMapper _mapper;

        public TeachersController(ApiDbContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }



        [HttpPost]
        public async Task<ActionResult<Teacher>> PostTeacher(TeacherAndClassRoomApiModel teacherAndClassroomApiModel)
        {
            if (_context.Teachers == null)
            {
                return Problem("Entity set 'ApiDbContext.Teachers'  is null.");
            }



            var obj = _mapper.Map<Teacher>(teacherAndClassroomApiModel.Teacher);
            var classroomList = _mapper.Map<List<ClassRoom>>(teacherAndClassroomApiModel.ClassroomList);

            obj.ClassRoomList = classroomList;




            _context.Teachers.Add(obj);
            await _context.SaveChangesAsync();

            return Ok();
        }

              
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Teacher>>> GetTeachers()
        {
          if (_context.Teachers == null)
          {
              return NotFound();
          }
            //return await _context.Teachers.ToListAsync();
            var obj = _context.Teachers.Include(t => t.ClassRoomList).ToList();
            return Ok(_mapper.Map<List<Teacher>>(obj));


        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Teacher>> GetTeacher(int id)
        {
          if (_context.Teachers == null)
          {
              return NotFound();
          }
            //var teacher = await _context.Teachers.FindAsync(id);
            var teacher = _context.Teachers.Where(t => t.Id == id).Include(cls => cls.ClassRoomList).FirstOrDefault();
            if (teacher == null)
            {
                return NotFound();
            }

            //return Ok(teacher);
            return _mapper.Map<Teacher>(teacher);

        }


        [HttpPut("{id}")]
        public async Task<IActionResult> PutTeacher( int id,TeacherAndClassRoomApiModel teacherAndClassroomApiModel)
        {
            if (id != teacherAndClassroomApiModel.Teacher.Id)
            {
                return BadRequest();

            }
            var obj = _mapper.Map<Teacher>(teacherAndClassroomApiModel.Teacher);
            var classroomList = _mapper.Map<List<ClassRoom>>(teacherAndClassroomApiModel.ClassroomList);

            obj.ClassRoomList = classroomList;
            _context.Teachers.Update(obj);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TeacherExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return Ok();
        }



        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTeacher(int id)
        {
            if (_context.Teachers == null)
            {
                return NotFound();
            }
            var teacher = await _context.Teachers.FindAsync(id);
            if (teacher == null)
            {
                return NotFound();
            }

            _context.Teachers.Remove(teacher);
            await _context.SaveChangesAsync();

            return Ok();
        }

        private bool TeacherExists(int id)
        {
            return (_context.Teachers?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
    