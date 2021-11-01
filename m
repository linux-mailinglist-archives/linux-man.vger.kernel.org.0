Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47536442238
	for <lists+linux-man@lfdr.de>; Mon,  1 Nov 2021 22:02:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229738AbhKAVFE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Nov 2021 17:05:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbhKAVFD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Nov 2021 17:05:03 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56405C061714
        for <linux-man@vger.kernel.org>; Mon,  1 Nov 2021 14:02:29 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id a9so7759681pgg.7
        for <linux-man@vger.kernel.org>; Mon, 01 Nov 2021 14:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TaY6VTlfu9cbzqEYlpxmC8zB8XMinHfHE2nuRUBl3BE=;
        b=c+8a4azWf1BgDRqf+UMvrvRC3pxwIjCI1a+Vgvofji3mjKfgZjbRPnXeY1gluJgp+Q
         Rf2Eg8DnvkEg5w3shs/RdLtq1jLbWf/k0YtsYR1gIApWQFt7KbAVBta6cjq3KQFEVGP7
         ngxHGygtRJvo333rTrXBOv6tSonmYO86NTHaFdH3qANA/4h7k1rwBIg/SkVJQw6gi/hj
         gLWbuEsils7nmQfRnthpyjkCpdcXHSyNfQDtZ0fyQaxrkDAhD2LLQyfWEE/rMS4HZ16+
         mvAisOhDjOSIsiD6T26ahWsoB7BnlKPwl+EX7/Xokz/NDbDY39ngBPSklfJgUJmczdlS
         +4cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TaY6VTlfu9cbzqEYlpxmC8zB8XMinHfHE2nuRUBl3BE=;
        b=KOnIBnWdzWEhIBfhXTIoUJb+iXsVepRjyYl21J1jserQIS0wnblrnd6kz305FXV/BE
         Fqs4plvjQgoNjprEBkAKoCPZ3tUsQSaj9ryDCBFSD6s+AMDFuNH+BELj8h9JblgdQAgw
         85yS4moAxWKljLvnXYpz7wBs8T7n+DksGWgDF/LGCgNv2gr/8JBjfGXro8CCRMOJytI4
         oXE4CayHdEq/1x1MocS4OyUNOH7IiZf1+2Qys7qzpKhDZHpNGxfN3ENVOu1vHjEyqxJR
         59QBgmNTg5dcRpkqUygnb0wlqt57e2JAmgXHnuUSeWJvWmPY7G5oKpYLTugGGDxZchnY
         nbtQ==
X-Gm-Message-State: AOAM533VhmlLeUOYr4G6sTLjnC5i2r7bME0AuqDEq980o5ihXQvkWzi6
        MZWsKC7ojA07pK+JOqaGaaTV30zYS033eQ==
X-Google-Smtp-Source: ABdhPJzsE9fDti2ndVk1phVxOcCdiLCe5rd9EYr1yNLnmHz29mIODCmYuAxbEju1Z9CpF6KCNUqx6g==
X-Received: by 2002:a63:8048:: with SMTP id j69mr4648543pgd.135.1635800548384;
        Mon, 01 Nov 2021 14:02:28 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:93fe:c592:efcd:2550])
        by smtp.gmail.com with ESMTPSA id f8sm316468pjq.29.2021.11.01.14.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 14:02:27 -0700 (PDT)
Date:   Tue, 2 Nov 2021 08:02:16 +1100
From:   Matthew Bobrowski <repnop@google.com>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>
Subject: Re: [PATCH 1/1] Document the new fanotify initialization flag
 FAN_REPORT_PIDFD
Message-ID: <YYBV2J4cDWbL6bLu@google.com>
References: <cover.1635135968.git.repnop@google.com>
 <6ea10a58db3446aabc729b1082611bdadb1ce4ed.1635135968.git.repnop@google.com>
 <CAOQ4uxiBJBqfH=eoA8sPven2tXzUmPftKJZCSpw=8f23SoAs0g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOQ4uxiBJBqfH=eoA8sPven2tXzUmPftKJZCSpw=8f23SoAs0g@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Oct 27, 2021 at 01:14:49PM +0300, Amir Goldstein wrote:
> On Wed, Oct 27, 2021 at 12:28 PM Matthew Bobrowski <repnop@google.com> wrote:
> >
> > This provides an explanation on the kind of additional information that can
> > be returned alongside the generic struct fanotify_event_metadata and in
> > what form this additional contextual information is delievered to a
> > listening application.
> >
> > Signed-off-by: Matthew Bobrowski <repnop@google.com>
> > ---
> >  man2/fanotify_init.2 | 54 +++++++++++++++++++++++++
> >  man7/fanotify.7      | 95 +++++++++++++++++++++++++++++++++++++++++++-
> >  2 files changed, 147 insertions(+), 2 deletions(-)
> >
> > diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> > index 0d83e817f..f65b4fa10 100644
> > --- a/man2/fanotify_init.2
> > +++ b/man2/fanotify_init.2
> > @@ -298,6 +298,60 @@ for additional details.
> >  This is a synonym for
> >  .RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
> >  .PP
> > +.TP
> > +.B FAN_REPORT_PIDFD " (since Linux 5.15)"
> > +Events for fanotify groups initialized with this flag will contain an
> > +additional information record object alongside the generic fanotify
> > +event metadata structure.
> > +This additional information record will be of type
> > +.BR FAN_EVENT_INFO_TYPE_PIDFD
> > +and will contain a pidfd for the process that was responsible for
> > +generating an event.
> > +The returned pidfd within the information object is indistinguishable
> > +from a pidfd that is obtained via
> > +.BR pidfd_open(2).
> > +Usage of this additional information record object is for applications
> > +that are interested in reliably determining whether the process
> > +responsible for generating the event has either been recycled or
> > +terminated.
> > +In the instance that either
> > +.BR FAN_REPORT_FID
> > +or
> > +.BR FAN_REPORT_DFID_NAME
> > +are supplied along with
> > +.BR FAN_REPORT_PIDFD
> > +information record objects of type
> > +.BR FAN_EVENT_INFO_TYPE_FID,
> > +.BR FAN_EVENT_INFO_TYPE_DFID
> > +and
> > +.BR FAN_EVENT_INFO_TYPE_DFID_NAME
> > +will likely precede the information object of type
> 
> Please get rid of "likely to precede"

ACK.

> > +.BR FAN_EVENT_INFO_TYPE_PIDFD
> > +for a single event within the read buffer.
> > +However, an event listener should never work with this information object
> > +ordering assumption and is encouraged to always check the information type
> 
> "However" "encouraged" are too weak to my taste.
> 
> An event listener should not assume any specific order for information records
> within an event and must always check the information type...

ACK.

> > +set within the
> > +.IR fanotify_event_info_header
> > +of each information object.
> > +The use of the
> > +.BR FAN_REPORT_TID
> > +flag along with
> > +.BR FAN_REPORT_PIDFD
> > +is currently not supported and attempting to do so will result in the
> > +error
> > +.BR EINVAL
> > +being returned.
> > +This limitation is imposed by the pidfd API as it currently only
> > +supports the creation of pidfds for thread-group leaders.
> > +Creating pidfds for non-thread-group leaders may be supported at some
> > +point in the future, so this restriction may eventually be lifted.
> > +Additional pidfd specific error cases can be reported back to the
> > +listening application in an information record object of type
> > +.BR FAN_EVENT_INFO_TYPE_PIDFD.
> > +See
> > +.BR fanotify(7)
> > +for additional details.
> > +.PP
> >  The
> >  .I event_f_flags
> >  argument
> > diff --git a/man7/fanotify.7 b/man7/fanotify.7
> > index 455e3ed17..09fa4defb 100644
> > --- a/man7/fanotify.7
> > +++ b/man7/fanotify.7
> > @@ -141,12 +141,24 @@ until either a file event occurs or the call is interrupted by a signal
> >  The use of one of the flags
> >  .BR FAN_REPORT_FID ,
> >  .BR FAN_REPORT_DIR_FID
> > +or
> > +.BR FAN_REPORT_PIDFD
> >  in
> >  .BR fanotify_init (2)
> >  influences what data structures are returned to the event listener for each
> >  event.
> > -Events reported to a group initialized with one of these flags will
> > -use file handles to identify filesystem objects instead of file descriptors.
> > +Events reported to a group initialized with one of either
> > +.BR FAN_REPORT_FID
> > +or
> > +.BR FAN_REPORT_DIR_FID
> > +flags will use file handles to identify filesystem objects instead of
> > +file descriptors.
> > +Events reported to a group intialized with
> > +.BR FAN_REPORT_PIDFD
> > +will attempt to also create a process file descriptor, commonly
> > +referred to as a pidfd, for the process responsible for generating the
> > +event and provide that alongside the generic fanotify metadata event
> > +structure.
> >  .PP
> >  After a successful
> >  .BR read (2),
> > @@ -188,6 +200,27 @@ struct fanotify_event_info_fid {
> >  .EE
> >  .in
> >  .PP
> > +In the instance that the fanotify group has been initialized with
> > +.BR FAN_REPORT_PIDFD ,
> > +the listening application should expect to receive a single
> > +information record object as detailed below alongside the generic
> > +.I fanotify_event_metadata structure:
> > +.PP
> > +.in +4n
> > +.EX
> > +struct fanotify_event_info_header {
> > +    __u8 info_type;
> > +    __u8 pad;
> > +    __u16 len;
> > +};
> 
> This structure was just listed a few lines up.
> There is no need to re-list it here.

ACK.

> > +
> > +struct fanotify_event_info_pidfd {
> > +        struct fanotify_event_info_header hdr;
> > +        __s32 pidfd;
> > +};
> > +.EE
> > +.in
> > +.PP
> >  For performance reasons, it is recommended to use a large
> >  buffer size (for example, 4096 bytes),
> >  so that multiple events can be retrieved by a single
> > @@ -510,6 +543,64 @@ and the file handle is followed by a null terminated string that identifies the
> >  name of a directory entry in that directory, or '.' to identify the directory
> >  object itself.
> >  .PP
> > +The fields of the
> > +.I fanotify_event_info_pidfd
> > +structure are as follows:
> > +.TP
> > +.I hdr
> > +This is a structure of type
> > +.IR fanotify_event_info_header .
> > +Exactly like the one that is provided in a
> > +.I fanotify_event_info_fid
> > +structure, it is a generic header that contains information used to
> > +describe an additional information record object that is attached to
> > +an event.
> > +In the instance that
> > +.BR FAN_REPORT_PIDFD
> > +is supplied during fanotify group initialization, a single information
> > +record object is expected to be attached alongside the generic
> > +metadata event with its
> > +.I info_type
> > +field set to the value of
> > +.BR FAN_EVENT_INFO_TYPE_PIDFD .
> > +The
> > +.I fanotify_event_info_header
> > +structure also contains a
> > +.I len
> > +field.
> > +The value of the
> > +.I len
> > +field is the total size of the
> > +.I fanotify_event_info_pidfd
> > +structure, which also includes
> > +.IR fanotify_event_info_header .
> 
> It would be a shame if we needed to repeat the same text for every new info_type
> that we add. There should be no duplicate documentation of the
> fanotify_event_info_header fields. Perhaps we need to describe those fields
> before documenting fanotify_event_info_fid fields instead of inline in the
> documentation of hdr field.

Right, I see where you're coming from and I do generally agree. If we
continue repeating the same pattern for each bonus event that is based
on fanotify_event_info_header, then we'll end up unnecessarily
polluting the documentation.

Would you like me to try shuffle things around in a patch that
precedes this one?

/M
