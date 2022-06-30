using _29J_TeacherClassroomAssignment.ApiModel;
using ApiDbLayerTC.Entities;
using AutoMapper;

namespace _29J_TeacherClassroomAssignment.MappingConfiguration
{
    public class AutoMapperProfile:Profile
    {

        public AutoMapperProfile()
        {
            CreateMap<Teacher, TeacherApiModel>().ReverseMap(); ;
            CreateMap<ClassRoom, ClassRoomApiModel>().ReverseMap();
        }


    }
}
