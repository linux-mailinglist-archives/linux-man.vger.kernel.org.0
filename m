Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 360423DEC4C
	for <lists+linux-man@lfdr.de>; Tue,  3 Aug 2021 13:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235584AbhHCLjP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Aug 2021 07:39:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235748AbhHCLjO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Aug 2021 07:39:14 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ED9FC061757
        for <linux-man@vger.kernel.org>; Tue,  3 Aug 2021 04:39:03 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id k38-20020a05600c1ca6b029025af5e0f38bso1504604wms.5
        for <linux-man@vger.kernel.org>; Tue, 03 Aug 2021 04:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gGfpehWg4h9ut4B73GDyWF+TrCUGp4R/7SfH1UMg4ms=;
        b=KI2g0Xw57HC0DnfinPqH2h/ClF9YF1ZfhCZ0UDLI7Yn82a1J+QqyXTrl/NC3zX0wV5
         AkuLyokzhg2jZYWAk9hpV6WsoWXWxzLZjRTBFs/b8P9yc579v14uMqQ/YOXPGlmbp62n
         tlo/HgrbAMRYE4cZKfQ0UxWl0VvR+ArK38xDKDLcB8TkNexc9DarJ98F0fBRb6emPv/n
         s4AG6fC+qqJQ+fUu3zpR9ZLm6a0KKryr348nPlhjPkOQjaSyYvSmK6C9yIaIEFeWxCi8
         LO9AGUDjw7lfHp843p6kNmIdGfxILZWlG1mnKihQo56bF4uwBupGYVSXjonb53h0CYMM
         IfcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gGfpehWg4h9ut4B73GDyWF+TrCUGp4R/7SfH1UMg4ms=;
        b=l7tZ5zeFyaCF9um8BMaDJyWvGp1r7wPilS2LSqysX4RC7svcNLC8M4u4pQptFLcKJG
         TMrNqoanMFQQEz98wGJdpxf8uCfucDUIBILF8wuks2/fcPQZ/6zKxodWlgVx/lbSMump
         pYBOPNf8efbdFIqFjWsieZC+f4NV09RlCdrw8AZYepgArgNWJETA8wKx5T44kuZeyxWu
         4RA2h8y4QWgp2xXdJL+w2A3k5ImZbG1eplURy4bRUllbw0i9YBcyp2MXwRK3ptHZN0np
         BuRNMA1h22l1/XE0mkVKyBqRYSW3GkMBuWkgpLvFgOSY7IYdl3yNm6OPzfRHPYfmmp/6
         sYSA==
X-Gm-Message-State: AOAM530BZP1GTCQCGghksyEbXvyd33UdQ6znJfi/9luaPu1Z0/p4JbfT
        o8m5Lxvm7dlRUMUVjIrvUJ8=
X-Google-Smtp-Source: ABdhPJxEfyI/WUAR9Ki4e27B2Y60z2R4BKQAIvDM5c5gYkntGyG7YZHu6Ogb3ChNbMR0r2NbeLGgGQ==
X-Received: by 2002:a1c:452:: with SMTP id 79mr3786120wme.125.1627990741282;
        Tue, 03 Aug 2021 04:39:01 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id w18sm15187471wrg.68.2021.08.03.04.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 04:39:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Christian Brauner <brauner@kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_setattr.2: Minor tweaks to Chirstian's patch
Date:   Tue,  3 Aug 2021 13:35:41 +0200
Message-Id: <20210803113540.330533-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210802104215.525543-1-brauner@kernel.org>
References: <20210802104215.525543-1-brauner@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

- Fix SYNOPSIS to fit in 78 columns

  Also, we don't show when an include is included for a specific type,
  unless that header is included _only_ for the type,
  or there might be confusion (e.g., termios).
  Instead, that type should be documented in system_data_types(7),
  with a link page mount_attr-struct(3).

- Fix references to mount_setattr().  See man-pages(7):

       Any reference to the subject of the current manual page should be writ‐
       ten with the name in bold followed by a pair of  parentheses  in  Roman
       (normal)  font.   For  example, in the fcntl(2) man page, references to
       the subject of the page would be written as:  fcntl().   The  preferred
       way to write this in the source file is:

           .BR fcntl ()

- Fix line breaks according to semantic newline rules (and add some commas)
- Fix wrong usage of .IR when .RI should have been used
- Fix formatting of variable part in FOO<number>:
  - Make italic the variable part (as groff_man(7) recommends)
  - Remove <>
  - Use syntax recommended by G. Branden Robinson (groff)

- Fix unnecessary uses of .BR or .IR when .B or .I would suffice
- Fix formatting of punctuation

  In some cases, it was in italics or bold, and it should always be in roman.

- Use uppercase to begin text, even in bullet points, since those were
  multi-sentence.

- Simplify usage of .RS/.RE in combination with .IP
- s/fat/FAT/ as fs(7) does
- Slightly reword some sentences for consistency
- Use Linux-specific for consistency with other pages (in VERSIONS)
- EXAMPLES: Place the return type in a line of its own (as in other pages)
- Fix alignment of code
- Replace unnecessary use of the GNU extension ({}) by do {} while (0)

  In that case, there was no return value (moreover, it's a noreturn).

- Break complex declaration lines into a line for each variable

  The variables were being initialized, some to non-zero values,
  so for clarity, a line for each one seems more appropriate.

- Remove unmatched groff commands

Cc: Christian Brauner <brauner@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi, Christian!

I applied your v4 patch.
On top of it I applied this fix.
Could you please check that the non-whitespace non-formatting
changes are correct?
Also, please have a look at the whitespace and formatting fixes :)

Thanks!

Alex


 man2/mount_setattr.2 | 444 ++++++++++++++++++++++---------------------
 1 file changed, 225 insertions(+), 219 deletions(-)

diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index 16881d90d..29d308f65 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -30,13 +30,13 @@ mount_setattr \- change mount properties of a mount or mount tree
 
 .PP
 .BR "#include <linux/fcntl.h>" " /* Definition of " AT_* " constants */"
-.BR "#include <linux/mount.h>" " /* Definition of struct mount_attr and MOUNT_ATTR_* constants */"
+.BR "#include <linux/mount.h>" " /* Definition of " MOUNT_ATTR_* " constants */"
 .BR "#include <sys/syscall.h>" " /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
 .PP
-.BI "int syscall(SYS_mount_setattr, int " dfd ", const char *" path \
-", unsigned int " flags \
-", struct mount_attr *" attr ", size_t " size );
+.BI "int syscall(SYS_mount_setattr, int " dfd ", const char *" path ,
+.BI "            unsigned int " flags ", struct mount_attr *" attr \
+", size_t " size );
 .fi
 .PP
 .IR Note :
@@ -46,13 +46,13 @@ necessitating the use of
 .BR syscall (2).
 .SH DESCRIPTION
 The
-.BR mount_setattr (2)
+.BR mount_setattr ()
 system call changes the mount properties of a mount or entire mount tree.
 If
 .I path
 is a relative pathname,
-then it is interpreted relative to the directory referred to by the file
-descriptor
+then it is interpreted relative to
+the directory referred to by the file descriptor
 .IR dfd .
 If
 .I dfd
@@ -60,24 +60,25 @@ is the special value
 .B AT_FDCWD
 then
 .I path
-is taken to be relative to the current working directory of the calling process.
+is interpreted relative to
+the current working directory of the calling process.
 If
 .I path
 is the empty string and
-.BR AT_EMPTY_PATH
+.B AT_EMPTY_PATH
 is specified in
-.I flags
+.IR flags ,
 then the mount properties of the mount identified by
 .I dfd
 are changed.
 .PP
 The
-.BR mount_setattr (2)
+.BR mount_setattr ()
 system call uses an extensible structure
-.IR ( "struct mount_attr" )
+.RI ( "struct mount_attr" )
 to allow for future extensions.
 Any non-flag extensions to
-.BR mount_setattr (2)
+.BR mount_setattr ()
 will be implemented as new fields appended to the above structure,
 with a zero value in a new field resulting in the kernel behaving
 as though that extension field was not present.
@@ -94,17 +95,18 @@ The
 argument should usually be specified as
 .IR "sizeof(struct mount_attr)" .
 However,
-if the caller does not intend to make use of features that got
-introduced after the initial version of
+if the caller does not intend to make use of features that
+got introduced after the initial version of
 .I struct mount_attr
-they are free to pass the size of the initial struct together with the larger
-struct.
-This allows the kernel to not copy later parts of the struct that aren't used
-anyway.
+they are free to pass
+the size of the initial struct together with the larger struct.
+This allows the kernel to not copy later parts of the struct
+that aren't used anyway.
 With each extension that changes the size of
 .I struct mount_attr
 the kernel will expose a define of the form
-.BR MOUNT_ATTR_SIZE_VER<number> .
+.BI MOUNT_ATTR_SIZE_VER number\c
+\&.
 For example the macro for the size of the initial version of
 .I struct mount_attr
 is
@@ -118,7 +120,8 @@ The supported values are:
 .B AT_EMPTY_PATH
 If
 .I path
-is the empty string change the mount properties on
+is the empty string,
+change the mount properties on
 .I dfd
 itself.
 .TP
@@ -134,7 +137,7 @@ Don't trigger automounts.
 The
 .I attr
 argument of
-.BR mount_setattr (2)
+.BR mount_setattr ()
 is a structure of the following form:
 .PP
 .in +4n
@@ -152,18 +155,21 @@ The
 .I attr_set
 and
 .I attr_clr
-members are used to specify the mount properties that are supposed to be set or
-cleared for a mount or mount tree.
+members are used to specify the mount properties that
+are supposed to be set or cleared for a mount or mount tree.
 Flags set in
 .I attr_set
-enable a property on a mount or mount tree and flags set in
+enable a property on a mount or mount tree,
+and flags set in
 .I attr_clr
 remove a property from a mount or mount tree.
 .PP
-When changing mount properties the kernel will first clear the flags specified
+When changing mount properties,
+the kernel will first clear the flags specified
 in the
 .I attr_clr
-field and then set the flags specified in the
+field,
+and then set the flags specified in the
 .I attr_set
 field:
 .PP
@@ -192,8 +198,8 @@ mnt->mnt_flags = current_mnt_flags;
 .in
 .PP
 The effect of this change will be a mount or mount tree that is read-only,
-blocks the execution of set-user-ID and set-group-ID binaries but does allow to
-execute programs and access to devices nodes.
+blocks the execution of set-user-ID and set-group-ID binaries,
+but does allow to execute programs and access to devices nodes.
 Multiple changes with the same set of flags requested
 in
 .I attr_clr
@@ -210,7 +216,8 @@ fields:
 .B MOUNT_ATTR_RDONLY
 If set in
 .I attr_set
-makes the mount read-only and if set in
+makes the mount read-only,
+and if set in
 .I attr_clr
 removes the read-only setting if set on the mount.
 .TP
@@ -227,46 +234,50 @@ and file capability restriction if set on this mount.
 .B MOUNT_ATTR_NODEV
 If set in
 .I attr_set
-prevents access to devices on this mount and if set in
+prevents access to devices on this mount,
+and if set in
 .I attr_clr
-removes the device access restriction if set on this mount.
+removes the restriction that prevented accesing devices on this mount.
 .TP
-.BR MOUNT_ATTR_NOEXEC
+.B MOUNT_ATTR_NOEXEC
 If set in
 .I attr_set
-prevents executing programs on this mount and if set in
+prevents executing programs on this mount,
+and if set in
 .I attr_clr
-removes the restriction to execute programs on this mount.
+removes the restriction that prevented executing programs on this mount.
 .TP
-.BR MOUNT_ATTR_NOSYMFOLLOW
+.B MOUNT_ATTR_NOSYMFOLLOW
 If set in
 .I attr_set
-prevents following symlinks on this mount and if set in
+prevents following symlinks on this mount,
+and if set in
 .I attr_clr
-removes the restriction to not follow symlinks on this mount.
+removes the restriction that prevented following symlinks on this mount.
 .TP
 .B MOUNT_ATTR_NODIRATIME
 If set in
 .I attr_set
-prevents updating access time for directories on this mount and if set in
+prevents updating access time for directories on this mount,
+and if set in
 .I attr_clr
-removes access time restriction for directories.
+removes the restriction that prevented updating access time for directories.
 Note that
-.BR MOUNT_ATTR_NODIRATIME
-can be combined with other access time settings and is implied
-by the noatime setting.
+.B MOUNT_ATTR_NODIRATIME
+can be combined with other access time settings
+and is implied by the noatime setting.
 All other access time settings are mutually exclusive.
 .TP
 .BR MOUNT_ATTR__ATIME " - Changing access time settings
-In the new mount api the access time values are an enum starting from 0.
+In the new mount API the access time values are an enum starting from 0.
 Even though they are an enum in contrast to the other mount flags such as
-.BR MOUNT_ATTR_NOEXEC
+.BR MOUNT_ATTR_NOEXEC ,
 they are nonetheless passed in
 .I attr_set
 and
 .I attr_clr
 for consistency with
-.BR fsmount (2)
+.BR fsmount (2),
 which introduced this behavior.
 .IP
 Note,
@@ -281,68 +292,67 @@ in the
 .I attr_clr
 field.
 The kernel will verify that
-.BR MOUNT_ATTR__ATIME
+.B MOUNT_ATTR__ATIME
 isn't partially set in
-.I attr_clr
+.IR attr_clr ,
 and that
 .I attr_set
 doesn't have any access time bits set if
-.BR MOUNT_ATTR__ATIME
+.B MOUNT_ATTR__ATIME
 isn't set in
 .IR attr_clr .
 .RS
 .TP
 .B MOUNT_ATTR_RELATIME
 When a file is accessed via this mount,
-update the file's last access time
-(atime)
-only if the current value of atime is less than or equal to the file's
-last modification time (mtime) or last status change time (ctime).
+update the file's last access time (atime)
+only if the current value of atime is less than or equal to
+the file's last modification time (mtime) or last status change time (ctime).
 .IP
-To enable this access time setting on a mount or mount tree
-.BR MOUNT_ATTR_RELATIME
+To enable this access time setting on a mount or mount tree,
+.B MOUNT_ATTR_RELATIME
 must be set in
 .I attr_set
 and
-.BR MOUNT_ATTR__ATIME
+.B MOUNT_ATTR__ATIME
 must be set in the
 .I attr_clr
 field.
 .TP
-.BR MOUNT_ATTR_NOATIME
+.B MOUNT_ATTR_NOATIME
 Do not update access times for (all types of) files on this mount.
 .IP
-To enable this access time setting on a mount or mount tree
-.BR MOUNT_ATTR_NOATIME
+To enable this access time setting on a mount or mount tree,
+.B MOUNT_ATTR_NOATIME
 must be set in
 .I attr_set
 and
-.BR MOUNT_ATTR__ATIME
+.B MOUNT_ATTR__ATIME
 must be set in the
 .I attr_clr
 field.
 .TP
-.BR MOUNT_ATTR_STRICTATIME
-Always update the last access time (atime) when files are accessed on this
-mount.
+.B MOUNT_ATTR_STRICTATIME
+Always update the last access time (atime)
+when files are accessed on this mount.
 .IP
-To enable this access time setting on a mount or mount tree
-.BR MOUNT_ATTR_STRICTATIME
+To enable this access time setting on a mount or mount tree,
+.B MOUNT_ATTR_STRICTATIME
 must be set in
 .I attr_set
 and
-.BR MOUNT_ATTR__ATIME
+.B MOUNT_ATTR__ATIME
 must be set in the
 .I attr_clr
 field.
 .RE
 .TP
-.BR MOUNT_ATTR_IDMAP
+.B MOUNT_ATTR_IDMAP
 If set in
 .I attr_set
 creates an idmapped mount.
-Since it is not supported to change the idmapping of a mount after it has been
-idmapped,
+Since it is not supported to
+change the idmapping of a mount after it has been idmapped,
 it is invalid to specify
 .B MOUNT_ATTR_IDMAP
 in
@@ -350,54 +360,51 @@ in
 The idmapping is taken from the user namespace specified in
 .I userns_fd
 and attached to the mount.
-More details can be found in subsequent paragraphs.
 .IP
-Creating an idmapped mount allows to change the ownership of all files located
-under a mount.
-Thus, idmapped mounts make it possible to change ownership in a temporary and
-localized way.
-It is a localized change because ownership changes are restricted to a specific
-mount.
+Creating an idmapped mount allows to
+change the ownership of all files located under a mount.
+Thus, idmapped mounts make it possible to
+change ownership in a temporary and localized way.
+It is a localized change because
+ownership changes are restricted to a specific mount.
 All other users and locations where the filesystem is exposed are unaffected.
-And it is a temporary change because ownership changes are tied to the lifetime
-of the mount.
+And it is a temporary change because
+ownership changes are tied to the lifetime of the mount.
 .IP
-Whenever callers interact with the filesystem through an idmapped mount the
-idmapping of the mount will be applied to user and group IDs associated with
-filesystem objects.
-This encompasses the user and group IDs associated with inodes and also
-the following
+Whenever callers interact with the filesystem through an idmapped mount,
+the idmapping of the mount will be applied to
+user and group IDs associated with filesystem objects.
+This encompasses the user and group IDs associated with inodes
+and also the following
 .BR xattr (7)
 keys:
 .RS
-.RS
-.IP \(bu 2
-.IR security.capability
+.IP \(bu
+.IR security.capability ,
 whenever filesystem
 .BR capabilities (7)
 are stored or returned in the
 .I VFS_CAP_REVISION_3
-format which stores a rootid alongside the capabilities.
-.IP \(bu 2
+format,
+which stores a rootid alongside the capabilities.
+.IP \(bu
 .I system.posix_acl_access
 and
-.I system.posix_acl_default
+.IR system.posix_acl_default ,
 whenever user IDs or group IDs are stored in
-.BR ACL_USER
-and
-.BR ACL_GROUP
+.B ACL_USER
+or
+.B ACL_GROUP
 entries.
 .RE
-.RE
 .IP
 The following conditions must be met in order to create an idmapped mount:
 .RS
-.RS
-.IP \(bu 2
+.IP \(bu
 The caller must have
 .I CAP_SYS_ADMIN
 in the initial user namespace.
-.IP \(bu 2
+.IP \(bu
 The filesystem must be mounted in the initial user namespace.
 .IP \(bu
 The underlying filesystem must support idmapped mounts.
@@ -405,9 +412,9 @@ Currently
 .BR xfs (5),
 .BR ext4 (5)
 and
-.BR fat
-filesystems support idmapped mounts with more filesystems being actively worked
-on.
+.B FAT
+filesystems support idmapped mounts
+with more filesystems being actively worked on.
 .IP \(bu
 The mount must not already be idmapped.
 This also implies that the idmapping of a mount cannot be altered.
@@ -420,24 +427,24 @@ with the
 .I OPEN_TREE_CLONE
 flag and it must not already have been visible in the filesystem.
 .RE
-.RE
 .IP
 Idmappings can be created for user IDs, group IDs, and project IDs.
 An idmapping is essentially a mapping of a range of user or group IDs into
 another or the same range of user or group IDs.
-Idmappings are usually written as three numbers either separated by white space
-or a full stop.
-The first two numbers specify the starting user or group ID in each of the two
-user namespaces.
+Idmappings are usually written as three numbers
+either separated by white space or a full stop.
+The first two numbers specify the starting user or group ID
+in each of the two user namespaces.
 The third number specifies the range of the idmapping.
 For example, a mapping for user IDs such as 1000:1001:1 would indicate that
-user ID 1000 in the caller's user namespace is mapped to user ID 1001 in its
-ancestor user namespace.
-Since the map range is 1 only user ID 1000 is mapped.
+user ID 1000 in the caller's user namespace is mapped to
+user ID 1001 in its ancestor user namespace.
+Since the map range is 1,
+only user ID 1000 is mapped.
 It is possible to specify up to 340 idmappings for each idmapping type.
-If any user IDs or group IDs are not mapped all files owned by that unmapped
-user or group ID will appear as being owned by the overflow user ID or overflow
-group ID respectively.
+If any user IDs or group IDs are not mapped,
+all files owned by that unmapped user or group ID will appear as
+being owned by the overflow user ID or overflow group ID respectively.
 Further details and instructions for setting up idmappings can be found in the
 .BR user_namespaces (7)
 man page.
@@ -445,69 +452,70 @@ man page.
 In the common case the user namespace passed in
 .I userns_fd
 together with
-.BR MOUNT_ATTR_IDMAP
+.B MOUNT_ATTR_IDMAP
 in
 .I attr_set
 to create an idmapped mount will be the user namespace of a container.
-In other scenarios it will be a dedicated user namespace associated with a
-user's login session as is the case for portable home directories in
+In other scenarios it will be a dedicated user namespace associated with
+a user's login session as is the case for portable home directories in
 .BR systemd-homed.service (8) ).
-It is also perfectly fine to create a dedicated user namespace for the sake of
-idmapping a mount.
+It is also perfectly fine to create a dedicated user namespace
+for the sake of idmapping a mount.
 .IP
-Idmapped mounts can be useful in the following and a variety of other
-scenarios:
-.RS
+Idmapped mounts can be useful in the following
+and a variety of other scenarios:
 .RS
-.IP \(bu 2
-sharing files between multiple users or multiple machines especially in
-complex scenarios.
+.IP \(bu
+Sharing files between multiple users or multiple machines,
+especially in complex scenarios.
 For example,
 idmapped mounts are used to implement portable home directories in
 .BR systemd-homed.service (8)
-where they allow users to move their home directory to an external storage
-device and use it on multiple computers where they are assigned different user IDs
-and group IDs.
-This effectively makes it possible to assign random user IDs and group IDs at login time.
+where they allow users to move their home directory
+to an external storage device
+and use it on multiple computers
+where they are assigned different user IDs and group IDs.
+This effectively makes it possible to
+assign random user IDs and group IDs at login time.
 .IP \(bu
-sharing files from the host with unprivileged containers.
-This allows user to avoid having to change ownership permanently through
+Sharing files from the host with unprivileged containers.
+This allows a user to avoid having to change ownership permanently through
 .BR chown (2) .
 .IP \(bu
-idmapping a container's root filesystem.
-Users don't need to change ownership
-permanently through
+Idmapping a container's root filesystem.
+Users don't need to change ownership permanently through
 .BR chown (2) .
-Especially for large root filesystems using
+Especially for large root filesystems, using
 .BR chown (2)
 can be prohibitively expensive.
 .IP \(bu
-sharing files between containers with non-overlapping
-idmappings.
+Sharing files between containers with non-overlapping idmappings.
 .IP \(bu
-implementing discretionary access (DAC) permission checking for fileystems
-lacking a concept of ownership.
+Implementing discretionary access (DAC) permission checking
+for fileystems lacking a concept of ownership.
 .IP \(bu
-efficiently change ownership on a per-mount basis.
+Efficiently change ownership on a per-mount basis.
 In contrast to
-.BR chown (2)
+.BR chown (2),
 changing ownership of large sets of files is instantenous with idmapped mounts.
-This is especially useful when ownership of an entire root filesystem of a
-virtual machine or container is to be changed as we've mentioned above.
-With idmapped mounts a single
-.BR mount_setattr (2)
+This is especially useful when ownership of
+an entire root filesystem of a virtual machine or container
+is to be changed as we've mentioned above.
+With idmapped mounts,
+a single
+.BR mount_setattr ()
 system call will be sufficient to change the ownership of all files.
 .IP \(bu
-taking the current ownership into account.
-Idmappings specify precisely what a user or group ID is supposed to be
-mapped to.
+Taking the current ownership into account.
+Idmappings specify precisely
+what a user or group ID is supposed to be mapped to.
 This contrasts with the
 .BR chown (2)
-system call which cannot by itself take the current ownership of the files it
-changes into account.
+system call which cannot by itself
+take the current ownership of the files it changes into account.
 It simply changes the ownership to the specified user ID and group ID.
 .IP \(bu
-locally and temporarily restricted ownership changes.
+Locally and temporarily restricted ownership changes.
 Idmapped mounts allow to change ownership locally,
 restricting it to specific mounts,
 and temporarily as the ownership changes only apply as long as the mount exists.
@@ -516,7 +524,6 @@ changing ownership via the
 .BR chown (2)
 system call changes the ownership globally and permanently.
 .RE
-.RE
 .PP
 The
 .I propagation
@@ -538,13 +545,13 @@ will propagate to the other mount points that are members of the peer group.
 Propagation here means that the same mount or unmount will automatically occur
 under all of the other mount points in the peer group.
 Conversely,
-mount and unmount events that take place under peer mount points will propagate
-to this mount point.
+mount and unmount events that take place under peer mount points
+will propagate to this mount point.
 .TP
 .B MS_SLAVE
 Turn all mounts into dependent mounts.
-Mount and unmount events propagate into this mount point from a shared peer
-group.
+Mount and unmount events propagate into this mount point
+from a shared peer group.
 Mount and unmount events under this mount point do not propagate to any peer.
 .TP
 .B MS_UNBINDABLE
@@ -558,7 +565,7 @@ when replicating that subtree to produce the target subtree.
 .PP
 .SH RETURN VALUE
 On success,
-.BR mount_setattr (2)
+.BR mount_setattr ()
 returns zero.
 On error,
 \-1 is returned and
@@ -576,8 +583,8 @@ is not a valid file descriptor.
 .TP
 .B EBUSY
 The caller tried to change the mount to
-.BR MOUNT_ATTR_RDONLY
-but the mount still has files open for writing.
+.B MOUNT_ATTR_RDONLY
+but the mount still holds files open for writing.
 .TP
 .B EINVAL
 The path specified via the
@@ -585,7 +592,7 @@ The path specified via the
 and
 .I path
 arguments to
-.BR mount_setattr (2)
+.BR mount_setattr ()
 isn't a mountpoint.
 .TP
 .B EINVAL
@@ -612,11 +619,11 @@ field of
 .TP
 .B EINVAL
 More than one of
-.BR MS_SHARED,
-.BR MS_SLAVE,
-.BR MS_PRIVATE,
+.BR MS_SHARED ,
+.BR MS_SLAVE ,
+.BR MS_PRIVATE ,
 or
-.BR MS_UNBINDABLE
+.B MS_UNBINDABLE
 was set in
 .I propagation
 field of
@@ -626,13 +633,13 @@ field of
 An access time setting was specified in the
 .I attr_set
 field without
-.BR MOUNT_ATTR__ATIME
+.B MOUNT_ATTR__ATIME
 being set in the
 .I attr_clr
 field.
 .TP
 .B EINVAL
-.BR MOUNT_ATTR_IDMAP
+.B MOUNT_ATTR_IDMAP
 was specified in
 .IR attr_clr .
 .TP
@@ -645,8 +652,8 @@ which exceeds
 .B EINVAL
 A valid file descriptor value was specified in
 .I userns_fd
-but the file descriptor wasn't a namespace file descriptor or did not refer to
-a user namespace.
+but the file descriptor wasn't a namespace file descriptor
+or did not refer to a user namespace.
 .TP
 .B EINVAL
 The underlying filesystem does not support idmapped mounts.
@@ -660,7 +667,7 @@ the mount is already visible in the filesystem.
 A partial access time setting was specified in
 .I attr_clr
 instead of
-.BR MOUNT_ATTR__ATIME
+.B MOUNT_ATTR__ATIME
 being set.
 .TP
 .B EINVAL
@@ -674,14 +681,14 @@ A pathname was empty or had a nonexistent component.
 .TP
 .B ENOMEM
 When changing mount propagation to
-.BR MS_SHARED
+.B MS_SHARED
 a new peer group id needs to be allocated for all mounts without a peer group
 id set.
 Allocation of this peer group id has failed.
 .TP
 .B ENOSPC
 When changing mount propagation to
-.BR MS_SHARED
+.B MS_SHARED
 a new peer group id needs to be allocated for all mounts without a peer group
 id set.
 Allocation of this peer group id can fail.
@@ -690,25 +697,25 @@ id allocation implementation used.
 .TP
 .B EPERM
 One of the mounts had at least one of
-.BR MOUNT_ATTR_NOATIME,
-.BR MOUNT_ATTR_NODEV,
-.BR MOUNT_ATTR_NODIRATIME,
-.BR MOUNT_ATTR_NOEXEC,
-.BR MOUNT_ATTR_NOSUID,
+.BR MOUNT_ATTR_NOATIME ,
+.BR MOUNT_ATTR_NODEV ,
+.BR MOUNT_ATTR_NODIRATIME ,
+.BR MOUNT_ATTR_NOEXEC ,
+.BR MOUNT_ATTR_NOSUID ,
 or
-.BR MOUNT_ATTR_RDONLY
+.B MOUNT_ATTR_RDONLY
 set and the flag is locked.
 Mount attributes become locked on a mount if:
 .RS
-.IP \(bu 2
-a new mount or mount tree is created causing mount propagation across user
+.IP \(bu
+A new mount or mount tree is created causing mount propagation across user
 namespaces.
 The kernel will lock the aforementioned flags to protect these sensitive
 properties from being altered.
 .IP \(bu
-a new mount and user namespace pair is created.
+A new mount and user namespace pair is created.
 This happens for example when specifying
-.BR CLONE_NEWUSER | CLONE_NEWNS
+.B CLONE_NEWUSER | CLONE_NEWNS
 in
 .BR unshare (2),
 .BR clone (2),
@@ -731,18 +738,18 @@ The caller does not have
 .I CAP_SYS_ADMIN
 in the initial user namespace.
 .SH VERSIONS
-.BR mount_setattr (2)
+.BR mount_setattr ()
 first appeared in Linux 5.12.
 .\" commit 7d6beb71da3cc033649d641e1e608713b8220290
 .\" commit 2a1867219c7b27f928e2545782b86daaf9ad50bd
 .\" commit 9caccd41541a6f7d6279928d9f971f6642c361af
 .SH CONFORMING TO
-.BR mount_setattr (2)
-is Linux specific.
+.BR mount_setattr ()
+is Linux-specific.
 .SH NOTES
 .SS Extensibility
 In order to allow for future extensibility,
-.BR mount_setattr (2)
+.BR mount_setattr ()
 along with other system calls such as
 .BR openat2 (2)
 and
@@ -751,7 +758,7 @@ requires the user-space application to specify the size of the
 .I mount_attr
 structure that it is passing.
 By providing this information, it is possible for
-.BR mount_setattr (2)
+.BR mount_setattr ()
 to provide both forwards- and backwards-compatibility, with
 .I size
 acting as an implicit version number.
@@ -772,9 +779,9 @@ and let
 be the size of the structure which the kernel supports,
 then there are three cases to consider:
 .RS
-.IP \(bu 2
+.IP \(bu
 If
-.IR ksize
+.I ksize
 equals
 .IR usize ,
 then there is no version mismatch and
@@ -782,26 +789,28 @@ then there is no version mismatch and
 can be used verbatim.
 .IP \(bu
 If
-.IR ksize
+.I ksize
 is larger than
 .IR usize ,
-then there are some extension fields that the kernel supports which the
-user-space application is unaware of.
+then there are some extension fields that the kernel supports
+which the user-space application is unaware of.
 Because a zero value in any added extension field signifies a no-op,
-the kernel treats all of the extension fields not provided by the user-space
-application as having zero values.
+the kernel treats all of the extension fields
+not provided by the user-space application
+as having zero values.
 This provides backwards-compatibility.
 .IP \(bu
 If
-.IR ksize
+.I ksize
 is smaller than
 .IR usize ,
 then there are some extension fields which the user-space application is aware
 of but which the kernel does not support.
 Because any extension field must have its zero values signify a no-op,
-the kernel can safely ignore the unsupported extension fields if they are
-all zero.
-If any unsupported extension fields are non-zero, then \-1 is returned and
+the kernel can safely ignore the unsupported extension fields
+if they are all zero.
+If any unsupported extension fields are non-zero,
+then \-1 is returned and
 .I errno
 is set to
 .BR E2BIG .
@@ -842,7 +851,7 @@ attr.attr_clr = MOUNT_ATTR_NODEV;
 .PP
 A user-space application that wishes to determine which extensions the running
 kernel supports can do so by conducting a binary search on
-.IR size
+.I size
 with a structure which has every byte nonzero
 (to find the largest value which doesn't produce an error of
 .BR E2BIG ) .
@@ -865,30 +874,26 @@ with a structure which has every byte nonzero
 #include <sys/syscall.h>
 #include <unistd.h>
 
-static inline int mount_setattr(int dfd,
-                                const char *path,
-                                unsigned int flags,
-                                struct mount_attr *attr,
-                                size_t size)
+static inline int
+mount_setattr(int dfd, const char *path, unsigned int flags,
+              struct mount_attr *attr, size_t size)
 {
-    return syscall(SYS_mount_setattr, dfd, path,
-                   flags, attr, size);
+    return syscall(SYS_mount_setattr, dfd, path, flags, attr, size);
 }
 
-static inline int open_tree(int dfd, const char *filename,
+static inline int
+open_tree(int dfd, const char *filename,
                             unsigned int flags)
 {
     return syscall(SYS_open_tree, dfd, filename, flags);
 }
 
-static inline int move_mount(int from_dfd,
-                             const char *from_pathname,
-                             int to_dfd,
-                             const char *to_pathname,
-                             unsigned int flags)
+static inline int
+move_mount(int from_dfd, const char *from_pathname,
+           int to_dfd, const char *to_pathname, unsigned int flags)
 {
-    return syscall(SYS_move_mount, from_dfd,
-                   from_pathname, to_dfd, to_pathname, flags);
+    return syscall(SYS_move_mount, from_dfd, from_pathname,
+                   to_dfd, to_pathname, flags);
 }
 
 static const struct option longopts[] = {
@@ -902,23 +907,25 @@ static const struct option longopts[] = {
     { NULL,             0,                  NULL,   0 },
 };
 
-#define exit_log(format, ...)                   \\
-    ({                                          \\
-        fprintf(stderr, format, ##__VA_ARGS__); \\
-        exit(EXIT_FAILURE);                     \\
-    })
+#define exit_log(format, ...)  do           \e
+{                                           \e
+    fprintf(stderr, format, ##__VA_ARGS__); \e
+    exit(EXIT_FAILURE);                     \e
+} while (0)
 
-int main(int argc, char *argv[])
+int
+main(int argc, char *argv[])
 {
-    int fd_userns = \-EBADF, index = 0;
+    int fd_userns = \-EBADF;
+    int index = 0;
     bool recursive = false;
     struct mount_attr *attr = &(struct mount_attr){};
     const char *source, *target;
     int fd_tree, new_argc, ret;
-    char *const *new_argv;
+    const char *const *new_argv;
 
     while ((ret = getopt_long_only(argc, argv, "",
-                                  longopts, &index)) != \-1) {
+                                   longopts, &index)) != \-1) {
         switch (ret) {
         case 'a':
             fd_userns = open(optarg, O_RDONLY | O_CLOEXEC);
@@ -985,7 +992,6 @@ int main(int argc, char *argv[])
     exit(EXIT_SUCCESS);
 }
 .EE
-.fi
 .SH SEE ALSO
 .BR capabilities (7),
 .BR clone (2),
-- 
2.32.0

