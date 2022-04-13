Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAB3B5002BB
	for <lists+linux-man@lfdr.de>; Thu, 14 Apr 2022 01:40:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230476AbiDMXnN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Apr 2022 19:43:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbiDMXnM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Apr 2022 19:43:12 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 419C526FA
        for <linux-man@vger.kernel.org>; Wed, 13 Apr 2022 16:40:49 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id ll10so3516009pjb.5
        for <linux-man@vger.kernel.org>; Wed, 13 Apr 2022 16:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=0gGUbarAEV5FnuGz3+amRSXHEfyPoZkzp3QFC9CsAZ8=;
        b=T71Mlbdl3YdRMo5M5sDdCfbpF3FPdOtgEpNAyWujOVdo+BMIYRnEOb0m5iDW4Nh7Xf
         russlb0cgfhm5pIkWTami4UCe55QUX/DhzfxdeODlnmWiLTw9lqs5vCdamcR+PWgH+0J
         nZoEVX+1u6hHSYa/To2vaufUzc4OHZOkpOUkSV+y8lBkYacsjxO5oREXTn2XSK2pWdgb
         YxiEnhanc1oZQuj38DS1FtAZ/hLesOLvnOamEeRiXAyqg6+heoX/2vgG6Tp86f+F7kZw
         qCWino14H/Qid2ugoXCEYAP/KrEVR3aGbCtpLI1O5EmRZXzLGEPjPKrlBevwjO5k15CD
         DfXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0gGUbarAEV5FnuGz3+amRSXHEfyPoZkzp3QFC9CsAZ8=;
        b=vkA2biXrA/yyvbrtdHm4bPrXCn5Pw0tMe6YAgYrvu7b4oTXFHMCz38SS2hJNyFtlmS
         G/dAlVwANT9V2yGrzXAziZjUkYffOElw3D4536u+ci9JVbpZWmYRbhoZ4rYoELwpwtvK
         Ti08p0yJWjpO4+JPf7sZYgtDmUXQo+F49cfvHGF41K3+3042NBe8a1XrgYTH9pI+0Nj8
         H7TnQaMVLVOhBOVhyUZsL+V5NUclEq1CvNsAgAo31Nm+W4DUHmPJprSiVW00QDsAvP00
         IBVrh0rZS65ikT/MdJhqkHcN1Zb7GptB7leP5UXryfQ6NVCz5tBacOA8KgcvJ7XQK96A
         G26w==
X-Gm-Message-State: AOAM532LYkO6uYLmh+SX3Gqh+7mDqLC4p4CJ3cQgS435V7SjZG8V1MCK
        ENxA6KjIWjMKrPjgu0NaQb835Q==
X-Google-Smtp-Source: ABdhPJx0IdtebqwmzREOIRiRJVBM7hB2jNHNWWk3qz/ZCugbrflh07bFDu4ZzqBNnJHTkdmlFjpNRw==
X-Received: by 2002:a17:902:7296:b0:151:62b1:e2b0 with SMTP id d22-20020a170902729600b0015162b1e2b0mr43934351pll.165.1649893248456;
        Wed, 13 Apr 2022 16:40:48 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:4fa0:a8de:fb03:cb6f])
        by smtp.gmail.com with ESMTPSA id a38-20020a056a001d2600b004fae885424dsm177877pfx.72.2022.04.13.16.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 16:40:48 -0700 (PDT)
Date:   Thu, 14 Apr 2022 09:40:36 +1000
From:   Matthew Bobrowski <repnop@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, jack@suse.cz, amir73il@gmail.com,
        mtk.manpages@gmail.com
Subject: Re: [PATCH v3] fanotify: Document FAN_REPORT_PIDFD Feature
Message-ID: <YldfdNebVVzwqxw9@google.com>
References: <9ab0575162eada7a3f73de71c06e1031b9e51bbe.1649718997.git.repnop@google.com>
 <f40ff271-a18e-9833-f858-9abf3bb19cd2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f40ff271-a18e-9833-f858-9abf3bb19cd2@gmail.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Haha, I created this patch using one of Amir's branches, as he
performed a rebase and handled some conflicts. It must've preserved
the display name "Amir Goldstein" in the "From:" header...

On Wed, Apr 13, 2022 at 08:24:21PM +0200, Alejandro Colomar wrote:
> Hi Amir!
> 
> On 4/12/22 01:17, Amir Goldstein wrote:
> > Update the fanotify API documentation to include details on the new
> > FAN_REPORT_PIDFD feature. This patch also includes a generic section
> > describing the concept of information records which are supported by
> > the fanotify API.
> > 
> > Signed-off-by: Matthew Bobrowski <repnop@google.com>
> > Reviewed-by: Jan Kara <jack@suse.cz>
> > Reviewed-by: Amir Goldstein <amir73il@gmail.com>
> 
> Thanks for the patch.  Please see some comments below.

Thanks for the review, I'll update and send through a follow up patch
shortly. I left a question on your comment about the use of semantic
newlines. I wasn't sure whether that comment was a general rule that
is to be applied across this entire patch (in which it definitely can,
I just wasn't aware of the rule prior to you explicitly pointing it
out), or whether there was a specific example you were referring to in
the code block directly above your comment.

> > ---
> >   man2/fanotify_init.2 |  34 +++++++
> >   man7/fanotify.7      | 208 +++++++++++++++++++++++++++++++++++--------
> >   2 files changed, 204 insertions(+), 38 deletions(-)
> > 
> > diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> > index 7f9a21a52..1e4691c88 100644
> > --- a/man2/fanotify_init.2
> > +++ b/man2/fanotify_init.2
> > @@ -283,6 +283,40 @@ for additional details.
> >   This is a synonym for
> >   .RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
> >   .PP
> > +.TP
> > +.BR FAN_REPORT_PIDFD " (since Linux 5.15)"
> > +.\" commit af579beb666aefb17e9a335c12c788c92932baf1
> > +Events for fanotify groups initialized with this flag will contain an
> > +additional information record alongside the generic
> > +.I fanotify_event_metadata
> > +structure.
> > +This information record will be of type
> > +.B FAN_EVENT_INFO_TYPE_PIDFD
> > +and will contain a pidfd for the process that was responsible for
> > +generating an event.
> > +A pidfd returned in this information record object is no different
> > +to the pidfd that is returned when calling
> > +.BR pidfd_open(2) .
> 
> Misplaced space.  Should be:
> 
> .BR pidfd_open (2).
> 
> > +Usage of this information record are for applications that may be
> > +interested in reliably determining whether the process responsible for
> > +generating an event has been recycled or terminated.
> > +The use of the
> > +.B FAN_REPORT_TID
> > +flag along with
> > +.B FAN_REPORT_PIDFD
> > +is currently not supported and attempting to do so will result in the
> > +error
> > +.B EINVAL
> > +being returned.
> > +This limitation is currently imposed by the pidfd API as it currently
> > +only supports the creation of pidfds for thread-group
> > +leaders.
> 
> Please use semantic newlines.
> See man-pages(7):
> 
>    Use semantic newlines
>        In the source of a manual page, new sentences  should  be
>        started on new lines, long sentences should be split into
>        lines at clause breaks (commas, semicolons,  colons,  and
>        so on), and long clauses should be split at phrase bound-
>        aries.  This convention,  sometimes  known  as  "semantic
>        newlines",  makes it easier to see the effect of patches,
>        which often operate at the level of individual sentences,
>        clauses, or phrases.

Fair point. Based on the above change block, I assume you're referring
to the the word "leaders" starting on a new line? The rest appears to
be inline with what's expected of semantic newlines?

> > +Creating pidfds for non-thread-group leaders may be supported at some
> > +point in the future, so this restriction may eventually be
> > +lifted.
> > +For more details on information records, see
> > +.BR fanotify(7) .
> 
> Misplaced space.  Should be:
> 
> .BR fanotify (7).
> 
> > +.PP
> >   The
> >   .I event_f_flags
> >   argument
> > diff --git a/man7/fanotify.7 b/man7/fanotify.7
> > index f8345b3f5..57dd2b040 100644
> > --- a/man7/fanotify.7
> > +++ b/man7/fanotify.7
> > @@ -118,16 +118,6 @@ until either a file event occurs or the call is interrupted by a signal
> >   (see
> >   .BR signal (7)).
> >   .PP
> > -The use of one of the flags
> > -.BR FAN_REPORT_FID ,
> > -.B FAN_REPORT_DIR_FID
> > -in
> > -.BR fanotify_init (2)
> > -influences what data structures are returned to the event listener for each
> > -event.
> > -Events reported to a group initialized with one of these flags will
> > -use file handles to identify filesystem objects instead of file descriptors.
> > -.PP
> >   After a successful
> >   .BR read (2),
> >   the read buffer contains one or more of the following structures:
> > @@ -146,20 +136,63 @@ struct fanotify_event_metadata {
> >   .EE
> >   .in
> >   .PP
> > -In case of an fanotify group that identifies filesystem objects by file
> > -handles, you should also expect to receive one or more additional information
> > -records of the structure detailed below following the generic
> > +Information records are supplemental pieces of information that may be
> > +provided alongside the generic
> > +.I fanotify_event_metadata
> > +structure.
> > +The
> > +.I flags
> > +passed to
> > +.BR fanotify_init (2) > +have influence over the type of information records that may be returned
> > +for an event.
> > +For example, if a notification group is initialized with
> > +.B FAN_REPORT_FID
> > +or
> > +.BR FAN_REPORT_DIR_FID ,
> > +then event listeners should also expect to receive a
> > +.I fanotify_event_info_fid
> > +structure alongside the
> > +.I fanotify_event_metadata
> > +structure, whereby file handles are used to identify filesystem
> > +objects rather than file descriptors.
> > +Information records may also be stacked, meaning that using the
> > +various
> > +.B FAN_REPORT_*
> > +flags in conjunction with one another is supported.
> > +In such cases, multiple information records can be returned for an
> > +event alongside the generic
> > +.I fanotify_event_metadata
> > +structure.
> > +For example, if a notification group is initialized with
> > +.B FAN_REPORT_FID
> > +and
> > +.BR FAN_REPORT_PIDFD ,
> > +then an event listener should also expect to receive both
> > +.I fanotify_event_info_fid
> > +and
> > +.I fanotify_event_info_pidfd
> > +structures alongside the generic
> > +.I fanotify_event_metadata
> > +structure.
> > +Importantly, fanotify provides no guarantee around the ordering of
> > +information records when a notification group is intialized with a
> > +stacked based configuration.
> > +Each information record has a nested structure of type
> > +.IR fanotify_event_info_header .
> > +It is imperative for event listeners to inspect the
> > +.I info_type
> > +field of this structure in order to determine the type of information
> > +record that had been received for a given event.
> > +.PP
> > +In cases where an fanotify group identifies filesystem objects by file
> > +handles, event listeners should also expect to receive one or more of
> > +the below information record objects alongside the generic
> >   .I fanotify_event_metadata
> >   structure within the read buffer:
> >   .PP
> >   .in +4n
> >   .EX
> > -struct fanotify_event_info_header {
> > -    __u8 info_type;
> > -    __u8 pad;
> > -    __u16 len;
> > -};
> > -
> >   struct fanotify_event_info_fid {
> >       struct fanotify_event_info_header hdr;
> >       __kernel_fsid_t fsid;
> > @@ -168,6 +201,40 @@ struct fanotify_event_info_fid {
> >   .EE
> >   .in
> >   .PP
> > +In cases where an fanotify group is initialized with
> > +.BR FAN_REPORT_PIDFD ,
> > +event listeners should expect to receive the below information record
> > +object alongside the generic
> > +.I fanotify_event_metadata
> > +structure within the read buffer:
> > +.PP
> > +.in +4n
> > +.EX
> > +struct fanotify_event_info_pidfd {
> > +        struct fanotify_event_info_header hdr;
> > +        __s32 pidfd;
> > +};
> > +.EE
> > +.in
> > +.PP
> > +All information records contain a nested structure of type
> > +.IR fanotify_event_info_header .
> > +This structure holds meta-information about the information record
> > +that may have been returned alongside the generic
> > +.I fanotify_event_metadata
> > +structure.
> > +This structure is defined as follows:
> > +.PP
> > +.in +4n
> > +.EX
> > +struct fanotify_event_info_header {
> > +	__u8 info_type;
> > +	__u8 pad;
> > +	__u16 len;
> > +};
> > +.EE
> > +.in
> > +.PP
> >   For performance reasons, it is recommended to use a large
> >   buffer size (for example, 4096 bytes),
> >   so that multiple events can be retrieved by a single
> > @@ -385,6 +452,48 @@ The
> >   flag is reported in an event mask only if the fanotify group identifies
> >   filesystem objects by file handles.
> >   .PP
> > +Information records that are supplied alongside the generic
> > +.I fanotify_event_metadata
> > +structure will always contain a nested structure of type
> > +.IR fanotify_event_info_header .
> > +The fields of the
> > +.I fanotify_event_info_header
> > +are as follows:
> > +.TP
> > +.I info_type
> > +A unique integer value representing the type of information record
> > +object received for an event.
> > +The value of this field can be set to one of the following:
> > +.BR FAN_EVENT_INFO_TYPE_FID ,
> > +.BR FAN_EVENT_INFO_TYPE_DFID ,
> > +.B FAN_EVENT_INFO_TYPE_DFID_NAME
> > +or
> > +.BR FAN_EVENT_INFO_TYPE_PIDFD .
> 
> Use Oxford-style commas.  See:
> 
> $ git show 3ded684c1a4b6104e1d4b7400015f8bf76dc75b9 | head -n25
> commit 3ded684c1a4b6104e1d4b7400015f8bf76dc75b9
> Author: Michael Kerrisk <mtk.manpages@gmail.com>
> Date:   Sat Jan 9 11:14:08 2021 +0100
> 
>     Various pages: tfix (Oxford comma)
> 
>     Found using:
> 
>         git grep -lE '^[^.].*,.*,.*[^,] (and|or)\>'
> 
>     Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>
> 
> diff --git a/man1/intro.1 b/man1/intro.1
> index 57023b652..9bf7190df 100644
> --- a/man1/intro.1
> +++ b/man1/intro.1
> @@ -220,7 +220,7 @@ and
>  .I pwd
>  commands and explore
>  .I cd
> -usage: "cd", "cd .", "cd ..", "cd /" and "cd \(ti".
> +usage: "cd", "cd .", "cd ..", "cd /", and "cd \(ti".
>  .SS Directories
>  The command
>  .I mkdir
> 
> 
> > +The value set for this field is dependent on the flags that have been
> > +supplied to
> > +.BR fanotify_init (2) .
> 
> Spurious space.  Should be:
> 
> .BR fanotify_init (2).
> 
> > +Refer to the field details of each information record object type
> > +below to understand the different cases in which the
> > +.I info_type
> > +values can be set.
> > +.TP
> > +.I pad
> > +This field is currently not used by any information record object type
> > +and therefore is set to zero.
> > +.TP
> > +.I len
> > +The value of
> > +.I len
> > +is set to the size of the information record object, including the
> > +.IR fanotify_event_info_header .
> > +The total size of all additional information records is not expected
> > +to be larger than
> > +(
> > +.I event_len
> > +\-
> > +.I metadata_len
> > +).
> 
> The above can be simplified to:
> 
> .RI ( event_len
> \-
> .IR metadata_len ).
> 
> > +.PP
> >   The fields of the
> >   .I fanotify_event_info_fid
> >   structure are as follows:
> > @@ -392,8 +501,6 @@ structure are as follows:
> >   .I hdr
> >   This is a structure of type
> >   .IR fanotify_event_info_header .
> > -It is a generic header that contains information used to describe an
> > -additional information record attached to the event.
> >   For example, when an fanotify file descriptor is created using
> >   .BR FAN_REPORT_FID ,
> >   a single information record is expected to be attached to the event with
> > @@ -414,23 +521,6 @@ identifying a parent directory object, and one with
> >   field value of
> >   .BR FAN_EVENT_INFO_TYPE_FID ,
> >   identifying a non-directory object.
> > -The
> > -.I fanotify_event_info_header
> > -contains a
> > -.I len
> > -field.
> > -The value of
> > -.I len
> > -is the size of the additional information record including the
> > -.I fanotify_event_info_header
> > -itself.
> > -The total size of all additional information records is not expected
> > -to be bigger than
> > -(
> > -.I event_len
> > -\-
> > -.I metadata_len
> > -).
> >   .TP
> >   .I fsid
> >   This is a unique identifier of the filesystem containing the object
> > @@ -498,6 +588,48 @@ and the file handle is followed by a null terminated string that identifies the
> >   name of a directory entry in that directory, or '.' to identify the directory
> >   object itself.
> >   .PP
> > +The fields of the
> > +.I fanotify_event_info_pidfd
> > +structure are as follows:
> > +.TP
> > +.I hdr
> > +This is a structure of type
> > +.IR fanotify_event_info_header .
> > +When an fanotify group is initialized using
> > +.BR FAN_REPORT_PIDFD ,
> > +the
> > +.I info_type
> > +field value of the
> > +.I fanotify_event_info_header
> > +is set to
> > +.BR FAN_EVENT_INFO_TYPE_PIDFD .
> > +.TP
> > +.I pidfd
> > +This is a process file descriptor that refers to the process
> > +responsible for generating the event.
> > +The returned process file descriptor is no different from one which
> > +could be obtained manually if
> > +.BR pidfd_open(2)
> 
> Missing a space before "(2)".
> 
> > +were to be called on
> > +.IR fanotify_event_metadata.pid .
> > +In the instance that an error is encountered during pidfd creation for
> > +one of two possible error types represented by a negative integer
> > +value may be returned in this
> > +.I pidfd
> > +field.
> > +In cases where the process responsible for generating the event has
> > +terminated prior to the event listener being able to read events from the
> > +notification queue,
> > +.B FAN_NOPIDFD
> > +is returned.
> > +The pidfd creation for an event is only performed at the time the
> > +events are read from the notification queue.
> > +All other possible pidfd creation failures are represented by
> > +.BR FAN_EPIDFD .
> > +Once the event listener has dealt with an event and the pidfd is no
> > +longer required, the pidfd should be closed via
> > +.BR close(2) .
> 
> Space is misplaced.  Should be:
> 
> .BR close (2).
> 
> > +.PP
> >   The following macros are provided to iterate over a buffer containing
> >   fanotify event metadata returned by a
> >   .BR read (2)

/M
