#
# Makefile for the linux spanfsv3-filesystem routines.
#

obj-$(CONFIG_SPANFSV3_FS) += spanfsv3.o

spanfsv3-y	:= balloc.o bitmap.o dir.o file.o fsync.o ialloc.o inode.o page-io.o \
		ioctl.o namei.o super.o symlink.o hash.o resize.o extents.o \
		ext4_jbd2.o migrate.o mballoc.o block_validity.o move_extent.o \
		mmp.o indirect.o extents_status.o xattr.o xattr_user.o \
		xattr_trusted.o inline.o

spanfsv3-$(CONFIG_SPANFSV3_FS_POSIX_ACL)	+= acl.o
spanfsv3-$(CONFIG_SPANFSV3_FS_SECURITY)		+= xattr_security.o
