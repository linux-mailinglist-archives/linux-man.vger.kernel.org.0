Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C25874FF4F5
	for <lists+linux-man@lfdr.de>; Wed, 13 Apr 2022 12:39:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231875AbiDMKlI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Apr 2022 06:41:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233673AbiDMKlG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Apr 2022 06:41:06 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1EF6583BB
        for <linux-man@vger.kernel.org>; Wed, 13 Apr 2022 03:38:45 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id t2so1017003qtw.9
        for <linux-man@vger.kernel.org>; Wed, 13 Apr 2022 03:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uEm+zk4mNQjSYcIU0fTjr8JOkVH6DC40E73hUbTHC+k=;
        b=eZcWbdTOspvT8rvoUrl8Ci5PHytpZFXujpgyb8wKwAM/27CWQMKI26iCygwjXzFel8
         vCERgClz5CcJY+8t7VO2hfX65IyGA1vtXwstJl3sWmtO3bYF9SM+mZMtlYYOmeVljvDi
         Nf8sc59zOyPu4xyHti3aHFWOmie+87Febn/mNZ71SXohOZavUdKfRdD1yodxUtI2KpDi
         zgKxf6JTccLEN8WAgPzwaFg4gGAFb89GNuRchBn1mdLwJAr5eEElU9HD1PXf4CxwEBF0
         W9TwF+hbvfXYssmR/YbgE80xX5MRBK9TBEWNPh94WyhoIf+LpXzQqv/sa0wo6txbFOAM
         qWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uEm+zk4mNQjSYcIU0fTjr8JOkVH6DC40E73hUbTHC+k=;
        b=YauMs89fE3sCaYszeaQGGTC+CSJSTGyQLK8l+RcNRo9Vmyf3pS81Sz744Qf4mrRiRw
         obKhcgKPTMDFPA/IZI2OrQ2sOmRWUXWT5pu4c86t3zusesod2mx2oe9JjtsO67032h8C
         2CsIOOZ+vvzN89sY6ICBtp+vrZeiOAHvJ3OHnDeEhUcLSG8A2/j5dLPYGetnW26q2Q6e
         bOIGlN4M5GP7qcJtUfUy3fA48qSXs0mr3efIecGK+bXUjpA87hyHEleVv7ae5HeFiqNA
         5W/dlfzpXHmS/du5MaarpECsJDvDKgMOQBCv0ZZftndzlZnrMgXciRkw1p8YkKQrjYwu
         ZxLw==
X-Gm-Message-State: AOAM533L4wgJseNtFIvt08HKy8UjP+6d1yWXJmEll3fxCIEWpL4nV/b8
        b6MCRgaY1qkffBS2IOUhHc+gz8O0qKluxprbkp9NdVeMHe0=
X-Google-Smtp-Source: ABdhPJy29t7Rl/TIiS5jdsRJeq6lCDSVBm+UcqM3MzGyewOB2619Q2r+1LUWpPE6sc34Gw/cQ85G8PCDlfpLC6gUus4=
X-Received: by 2002:ac8:4e46:0:b0:2e1:b933:ec06 with SMTP id
 e6-20020ac84e46000000b002e1b933ec06mr6659751qtw.684.1649846324638; Wed, 13
 Apr 2022 03:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <YlDCh1OEVxSgu2L9@google.com> <CAOQ4uxjpwZs8Jg-cZ5yWqUis=FA=+g+ycjdBchz0kzKBhs6HxQ@mail.gmail.com>
 <YlSzOaBTLA+LqOhU@google.com> <87bkx7xj3q.fsf@collabora.com>
 <YlTKQWTwWY45g9Ws@google.com> <87lewacf0r.fsf_-_@collabora.com> <20220413082751.57lzlgwiursy7onk@quack3.lan>
In-Reply-To: <20220413082751.57lzlgwiursy7onk@quack3.lan>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Wed, 13 Apr 2022 13:38:33 +0300
Message-ID: <CAOQ4uxiYE7qKY6QmRJRwBnRmr6R=LRL8aJ_2Lv-fvKGkiN4xHw@mail.gmail.com>
Subject: Re: [PATCH v4] fanotify.7, fanotify_mark.2: Document FAN_FS_ERROR
To:     Jan Kara <jack@suse.cz>
Cc:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Apr 13, 2022 at 11:27 AM Jan Kara <jack@suse.cz> wrote:
>
> On Tue 12-04-22 14:50:28, Gabriel Krisman Bertazi wrote:
> > FAN_FS_ERROR is a new event for fanotify to report filesystem errors.
> > This documents how to use the feature and specific caveats.
> >
> > Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> >
> > ---
> > + Michael, linux-man
> >
> > Matthew,
> >
> > as discussed, this is rebased on top of the PIDFD documentation: commit
> > 207080c7f7f5 ("fanotify: Document FAN_REPORT_PIDFD Feature").
> >
> > Changes since v3:
> >  (Matthew)
> >  - Rewording and fixes from github)
> >  (amir)
> >  - 5.15 -> 5.16
> >
> > Changes since v2:
> >   (matthew)
> >     - Grammar
> >     - List filesystems that support the feature
> >     - file system -> filesystem
> > Changes since v1:
> > (Matthew)
> >   - Grammar fixes
> >   - Don't use the term "submitted" for events sent to the listener
> >   - Clarify the kind of information that is file system specific
>
> Thanks for the manpage! Couple of notes below.
>
> > diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> > index 9a45cbb77893..8f9bb863980b 100644
> > --- a/man2/fanotify_mark.2
> > +++ b/man2/fanotify_mark.2
> > @@ -203,6 +203,27 @@ Create an event when a marked file or directory itself is deleted.
> >  An fanotify group that identifies filesystem objects by file handles
> >  is required.
> >  .TP
> > +.BR FAN_FS_ERROR " (since Linux 5.16)"
> > +.\" commit 9709bd548f11a092d124698118013f66e1740f9b
> > +Create an event when a filesystem error is detected.
>
> Maybe we could specify here a bit more what "filesystem error" means?
> Because we don't generate the event e.g. on ENOSPC which could be
> considered filesystem error. We don't generate it on EIO in data block
> either. So maybe something like: "Create an event when a filesystem error
> leading to inconsistent filesystem metadata is detected." Because that's
> closer to what we currently do as far as I remember.
>
> > +An fanotify group that identifies filesystem objects by file handles
> > +is required.
> > +.IP
> > +An additional information record of type
> > +.BR FAN_EVENT_INFO_TYPE_ERROR
> > +is returned for each event in the read buffer.
> > +.IP
> > +Events of such type are dependent on support
> > +from the underlying filesystem.
> > +At the time of this writing,
> > +only the
> > +.B ext4
> > +filesystem supports this feature.
> > +.IP
> > +See
> > +.BR fanotify (7)
> > +for additional details.
> > +.TP
>
> BTW any plans to add support to XFS or btrfs? I guess it would be good to
> spread the use a bit more so that it does not end up as a niche ext4
> feature not very useful to programmers...
>

I would like to point that the term "filesystem supports this feature"
is somewhat
ambiguous here.

This same man page says: "...tmpfs(5) did not support fsid prior to Linux 5.13."
meaning that an attempt to setup a mark with FAN_REPORT_FID group on
tmpfs would result in an error.

OTOH, trying to setup a mark with FAN_FS_ERROR on tmpfs/xfs is not going to
result in any error, it is just going to result in no FAN_FS_ERROR
errors reported.

I think that we should make that more clear  by saying something like:
"At the time of this writing, only the ext4 filesystem reports
FAN_FS_ERROR events.

With that you may add:

Reviewed-by: Amir Goldstein <amir73il@gmail.com>

And I will update your v5 patch in my patch queue.

Thanks,
Amir.
