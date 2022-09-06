bl_info = {
    "name": "GHD Camera",
    "author": "Gholamreza Dar",
    "version": (1, 0),
    "blender": (2, 80, 0),
    "location": "View3D > Add > Mesh > GHD Camera",
    "description": "Adds a new Camera From View and Locked to View",
    "warning": "",
    "doc_url": "",
    "category": "Add Mesh",
}


import bpy
from bpy.types import Operator
from bpy.props import FloatVectorProperty
from bpy_extras.object_utils import AddObjectHelper, object_data_add
from mathutils import Vector


class OBJECT_OT_add_object(Operator, AddObjectHelper):
    """Create a new Camera From View and Locked to View"""
    bl_idname = "mesh.add_ghd_camera"
    bl_label = "Add Mesh Object"
    bl_options = {'REGISTER', 'UNDO'}

    def execute(self, context):

        bpy.ops.object.camera_add(enter_editmode=False, align='VIEW', location=(0, 0, 0), rotation=(0.0, 0.0, 0.0))
        bpy.ops.view3d.camera_to_view()
        context.space_data.lock_camera = True

        return {'FINISHED'}


# Registration

def add_object_button(self, context):
    self.layout.operator(
        OBJECT_OT_add_object.bl_idname,
        text="GHD Camera",
        icon='PLUGIN')


def register():
    bpy.utils.register_class(OBJECT_OT_add_object)
    bpy.types.VIEW3D_MT_mesh_add.append(add_object_button)


def unregister():
    bpy.utils.unregister_class(OBJECT_OT_add_object)
    bpy.types.VIEW3D_MT_mesh_add.remove(add_object_button)


if __name__ == "__main__":
    register()
