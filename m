Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A76A24F9DD
	for <lists+linux-man@lfdr.de>; Mon, 24 Aug 2020 11:50:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727889AbgHXJtz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Aug 2020 05:49:55 -0400
Received: from mx2.suse.de ([195.135.220.15]:45736 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728640AbgHXJtw (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 24 Aug 2020 05:49:52 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id D240CACDF;
        Mon, 24 Aug 2020 09:50:19 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
        id A0F3B1E1316; Mon, 24 Aug 2020 11:49:49 +0200 (CEST)
Date:   Mon, 24 Aug 2020 11:49:49 +0200
From:   Jan Kara <jack@suse.cz>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] fanotify.7, fanotify_mark.2: Generalize
 documentation of FAN_REPORT_FID
Message-ID: <20200824094949.GB24877@quack2.suse.cz>
References: <20200824080326.5012-1-amir73il@gmail.com>
 <20200824080326.5012-2-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200824080326.5012-2-amir73il@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon 24-08-20 11:03:24, Amir Goldstein wrote:
> With fanotify_init(2) flag FAN_REPORT_FID, the group identifies
> filesystem objects by file handles in a single event info record of type
> FAN_EVENT_INFO_TYPE_FID.
> 
> We indend to add support for new fanotify_init(2) flags for which the
> group identifies filesystem objects by file handles and add more event
> info record types.
> 
> To that end, start by changing the language of the man page to refer
> to a "group that identifies filesystem objects by file handles" instead
> of referring to the FAN_REPORT_FID flag and document the extended event
> format structure in a more generic manner that allows more than a single
> event info record and not only a record of type FAN_EVENT_INFO_TYPE_FID.
> 
> Clarify that the object identified by the file handle refers to the
> directory in directory entry modification events.
> 
> Remove a note about directory entry modification events and monitoring
> a mount point that I found to be too confusing and out of context.
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

The changes look good to me. You can add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  man2/fanotify_init.2 | 26 +++++++-----
>  man2/fanotify_mark.2 | 50 +++++++----------------
>  man7/fanotify.7      | 94 ++++++++++++++++++++++++--------------------
>  3 files changed, 83 insertions(+), 87 deletions(-)
> 
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index 8eedfe194..54646e3c6 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -159,22 +159,30 @@ supplied to
>  .\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
>  This value allows the receipt of events which contain additional information
>  about the underlying filesystem object correlated to an event.
> -An additional structure encapsulates the information about the object and is
> -included alongside the generic event metadata structure.
> +An additional record of type
> +.BR FAN_EVENT_INFO_TYPE_FID
> +encapsulates the information about the object and is included alongside the
> +generic event metadata structure.
>  The file descriptor that is used to represent the object correlated to an
>  event is instead substituted with a file handle.
>  It is intended for applications that may find the use of a file handle to
>  identify an object more suitable than a file descriptor.
> -Additionally, it may be used for applications that are interested in
> -directory entry events, such as
> +Additionally, it may be used for applications monitoring a directory or a
> +filesystem that are interested in the directory entry modification events
>  .BR FAN_CREATE ,
> -.BR FAN_ATTRIB ,
> +.BR FAN_DELETE ,
> +and
>  .BR FAN_MOVE ,
> +or in events such as
> +.BR FAN_ATTRIB ,
> +.BR FAN_DELETE_SELF ,
>  and
> -.BR FAN_DELETE
> -for example.
> -Note that the use of directory modification events are not supported when
> -monitoring a mount point.
> +.BR FAN_MOVE_SELF .
> +All the events above require an fanotify group that identifies filesystem
> +objects by file handles.
> +Note that for the directory entry modification events the reported file handle
> +identifies the modified directory and not the created/deleted/moved child
> +object.
>  The use of
>  .BR FAN_CLASS_CONTENT
>  or
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 579e5a907..042841687 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -126,10 +126,7 @@ is not itself a mount point, the mount point containing
>  will be marked.
>  All directories, subdirectories, and the contained files of the mount point
>  will be monitored.
> -The events which require the
> -.I fanotify_fd
> -file descriptor to have been initialized with the flag
> -.BR FAN_REPORT_FID ,
> +The events which require that filesystem objects are identified by file handles,
>  such as
>  .BR FAN_CREATE ,
>  .BR FAN_ATTRIB ,
> @@ -194,54 +191,47 @@ See NOTES for additional details.
>  .BR FAN_ATTRIB " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when the metadata for a file or directory has changed.
> -An fanotify file descriptor created with
> -.B FAN_REPORT_FID
> +An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
>  .BR FAN_CREATE " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been created in a marked
>  parent directory.
> -An fanotify file descriptor created with
> -.B FAN_REPORT_FID
> +An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
>  .BR FAN_DELETE " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been deleted in a marked
>  parent directory.
> -An fanotify file descriptor created with
> -.B FAN_REPORT_FID
> +An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
>  .BR FAN_DELETE_SELF " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a marked file or directory itself is deleted.
> -An fanotify file descriptor created with
> -.B FAN_REPORT_FID
> +An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
>  .BR FAN_MOVED_FROM " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been moved from a marked
>  parent directory.
> -An fanotify file descriptor created with
> -.B FAN_REPORT_FID
> +An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
>  .BR FAN_MOVED_TO " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a file or directory has been moved to a marked parent
>  directory.
> -An fanotify file descriptor created with
> -.B FAN_REPORT_FID
> +An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
>  .BR FAN_MOVE_SELF " (since Linux 5.1)"
>  .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>  Create an event when a marked file or directory itself has been moved.
> -An fanotify file descriptor created with
> -.B FAN_REPORT_FID
> +An fanotify group that identifies filesystem objects by file handles
>  is required.
>  .TP
>  .B FAN_OPEN_PERM
> @@ -393,8 +383,7 @@ was not an fanotify file descriptor.
>  .B EINVAL
>  The fanotify file descriptor was opened with
>  .B FAN_CLASS_NOTIF
> -or
> -.B FAN_REPORT_FID
> +or the fanotify group identifies filesystem objects by file handles
>  and mask contains a flag for permission events
>  .RB ( FAN_OPEN_PERM
>  or
> @@ -407,11 +396,8 @@ is not associated with a filesystem that supports
>  .I fsid
>  (e.g.,
>  .BR tmpfs (5)).
> -This error can be returned only when an fanotify file descriptor returned
> -by
> -.BR fanotify_init (2)
> -has been created with
> -.BR FAN_REPORT_FID .
> +This error can be returned only with an fanotify group that identifies
> +filesystem objects by file handles.
>  .TP
>  .B ENOENT
>  The filesystem object indicated by
> @@ -452,11 +438,8 @@ The object indicated by
>  .I pathname
>  is associated with a filesystem that does not support the encoding of file
>  handles.
> -This error can be returned only when an fanotify file descriptor returned
> -by
> -.BR fanotify_init (2)
> -has been created with
> -.BR FAN_REPORT_FID .
> +This error can be returned only with an fanotify group that identifies
> +filesystem objects by file handles.
>  .TP
>  .B EXDEV
>  The filesystem object indicated by
> @@ -466,11 +449,8 @@ resides within a filesystem subvolume (e.g.,
>  which uses a different
>  .I fsid
>  than its root superblock.
> -This error can be returned only when an fanotify file descriptor returned
> -by
> -.BR fanotify_init (2)
> -has been created with
> -.BR FAN_REPORT_FID .
> +This error can be returned only with an fanotify group that identifies
> +filesystem objects by file handles.
>  .SH VERSIONS
>  .BR fanotify_mark ()
>  was introduced in version 2.6.36 of the Linux kernel and enabled in version
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index a7d60b2b9..a7b219168 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -110,13 +110,11 @@ Two types of events are generated:
>  events and
>  .I permission
>  events.
> -Notification events are merely informative
> -and require no action to be taken by
> -the receiving application with the exception being that the file
> -descriptor provided within a generic event must be closed.
> -The closing of file descriptors for each event applies only to
> -applications that have initialized fanotify without using
> -.BR FAN_REPORT_FID
> +Notification events are merely informative and require no action to be taken
> +by the receiving application with one exception - if a valid file descriptor
> +is provided within a generic event, the file descriptor must be closed.
> +File descriptors are not provided with event to applications that have
> +created fanotify group so that it identifies filesystem objects by file handles
>  (see below).
>  Permission events are requests to the receiving application to decide
>  whether permission for a file access shall be granted.
> @@ -147,7 +145,9 @@ The use of the
>  flag in
>  .BR fanotify_init (2)
>  influences what data structures are returned to the event listener for each
> -event.
> +event. Events reported to a group initialized with this flag will
> +use file handles to identify filesystem objects instead of file descriptors.
> +.TP
>  After a successful
>  .BR read (2),
>  the read buffer contains one or more of the following structures:
> @@ -166,17 +166,20 @@ struct fanotify_event_metadata {
>  .EE
>  .in
>  .PP
> -In the case where
> -.BR FAN_REPORT_FID
> -is supplied as one of the flags to
> -.BR fanotify_init (2),
> -you should also expect to receive the structure detailed below following
> -the generic
> +In case of an fanotify group that identifies filesystem objects by file
> +handles, you should also expect to receive one or more additional information
> +records of the structure detailed below following the generic
>  .I fanotify_event_metadata
>  structure within the read buffer:
>  .PP
>  .in +4n
>  .EX
> +struct fanotify_event_info_header {
> +        __u8 info_type;
> +        __u8 pad;
> +        __u16 len;
> +};
> +
>  struct fanotify_event_info_fid {
>      struct fanotify_event_info_header hdr;
>      __kernel_fsid_t fsid;
> @@ -202,16 +205,13 @@ structure are as follows:
>  .I event_len
>  This is the length of the data for the current event and the offset
>  to the next event in the buffer.
> -Without
> -.BR FAN_REPORT_FID ,
> -the value of
> +Unless the group identifies filesystem objects by file handles, the value of
>  .I event_len
>  is always
>  .BR FAN_EVENT_METADATA_LEN .
> -With
> -.BR FAN_REPORT_FID ,
> +For a group that identifies filesystem objects by file handles,
>  .I event_len
> -also includes the variable length file identifier.
> +also includes the variable length file identifier records.
>  .TP
>  .I vers
>  This field holds a version number for the structure.
> @@ -238,8 +238,7 @@ This is a bit mask describing the event (see below).
>  This is an open file descriptor for the object being accessed, or
>  .B FAN_NOFD
>  if a queue overflow occurred.
> -If the fanotify file descriptor has been initialized using
> -.BR FAN_REPORT_FID ,
> +With an fanotify group that identifies filesystem objects by file handles,
>  applications should expect this value to be set to
>  .B FAN_NOFD
>  for each event that is received.
> @@ -395,9 +394,8 @@ See
>  for additional details.
>  The
>  .BR FAN_ONDIR
> -flag is reported in an event mask only if the fanotify group has been
> -initialized with the flag
> -.BR FAN_REPORT_FID .
> +flag is reported in an event mask only if the fanotify group identifies
> +filesystem objects by file handles.
>  .PP
>  The fields of the
>  .I fanotify_event_info_fid
> @@ -406,24 +404,30 @@ structure are as follows:
>  .I hdr
>  This is a structure of type
>  .IR fanotify_event_info_header .
> -It is a generic header that contains information used to describe
> -additional information attached to the event.
> +It is a generic header that contains information used to describe an
> +additional information record attached to the event.
>  For example, when an fanotify file descriptor is created using
>  .BR FAN_REPORT_FID ,
> -the
> +a single information record is expected to be attached to the event with
>  .I info_type
> -field of this header is set to
> +field value of
>  .BR FAN_EVENT_INFO_TYPE_FID .
> -Event listeners can use this field to check that the additional
> -information received for an event is of the correct type.
> -Additionally, the
> +The
>  .I fanotify_event_info_header
> -also contains a
> +contains a
>  .I len
>  field.
> -In the current implementation, the value of
> +The value of
>  .I len
> -is always (event_len \- FAN_EVENT_METADATA_LEN).
> +is the size of the additional information record including the
> +.IR fanotify_event_info_header
> +itself. The total size of all additional information records is not expected
> +to be bigger than
> +(
> +.IR event_len
> +\-
> +.IR metadata_len
> +).
>  .TP
>  .I fsid
>  This is a unique identifier of the filesystem containing the object
> @@ -436,31 +440,35 @@ when calling
>  .BR statfs (2).
>  .TP
>  .I file_handle
> -This is a variable length structure of type
> -.IR file_handle .
> +This is a variable length structure of type struct file_handle.
>  It is an opaque handle that corresponds to a specified object on a
>  filesystem as returned by
>  .BR name_to_handle_at (2).
>  It can be used to uniquely identify a file on a filesystem and can be
>  passed as an argument to
>  .BR open_by_handle_at (2).
> -Note that for directory entry events, such as
> +Note that for the directory entry modification events
>  .BR FAN_CREATE ,
>  .BR FAN_DELETE ,
>  and
>  .BR FAN_MOVE ,
>  the
>  .IR file_handle
> -describes the modified directory and not the created/deleted/moved child
> +identifies the modified directory and not the created/deleted/moved child
>  object.
> -The events
> +For other events such as
> +.BR FAN_OPEN ,
>  .BR FAN_ATTRIB ,
>  .BR FAN_DELETE_SELF ,
>  and
> -.BR FAN_MOVE_SELF
> -will carry the
> +.BR FAN_MOVE_SELF ,
> +if the value of
> +.I info_type
> +field is
> +.BR FAN_EVENT_INFO_TYPE_FID ,
> +the
>  .IR file_handle
> -information for the child object if the child object is being watched.
> +identifies the object correlated to the event.
>  .PP
>  The following macros are provided to iterate over a buffer containing
>  fanotify event metadata returned by a
> -- 
> 2.17.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
