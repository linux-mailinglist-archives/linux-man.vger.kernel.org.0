Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47E1F5ADF4F
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 08:01:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238582AbiIFGBc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 02:01:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238365AbiIFGBF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 02:01:05 -0400
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61B136E8BC
        for <linux-man@vger.kernel.org>; Mon,  5 Sep 2022 23:00:58 -0700 (PDT)
Received: by mail-vs1-xe33.google.com with SMTP id 129so2232091vsi.10
        for <linux-man@vger.kernel.org>; Mon, 05 Sep 2022 23:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=IHHw3ZY1QZpDPWUA1zumzghk4plJwr05AfreZwB/Trk=;
        b=mK4KN/fXFiHKI4hvwkTSrVtITb603tpUdrrwzDS6evst/3OuXqnP9cOaCwuvF/2GaD
         Jb2hwh8Q7HYDztwajp1YcMBC9tXXxb4gS0Gqu4mgJqTExVA1JlB6VGWiKWDfHhfB3uf2
         ZdRW5jluOW0okEgVuNVzGOWzPP1UBohpQwGA01OuQSaniQlZz6o+32FRQCxlJ0YKvkWD
         TEqnTIuhSpjRZyE/c/0qut5/c1lquRjGf6xQXimrQtLnuuwAzGNo1z4ebVvzlIivRJqX
         EFQXGG8Z5okHJswezzY/K2VdQPH+9m2WSwreTX7f67AtLrT810BcGDo3nGMisquCesCM
         1gaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=IHHw3ZY1QZpDPWUA1zumzghk4plJwr05AfreZwB/Trk=;
        b=JTxr4O+bpBsfUXm2nGyVxF0uSrbD6TWvjnb4RS5bPJPK9SCMlRsTNEASkKKMCIeQEh
         6gK7UHcAJAfoMUcIuSWeSMUtmg4P4gWnAz/q0AWmCePUeC2Q2A3OJ76G6zXsFG+8g/zb
         SKbgV3/2v0jUQCiPxvVLGdYTSCbXbJ8Z+XDPODe1QEmFrR6WKnAybe/cdl26zbrd0wPP
         Q58adwG21OhMRzlQxwp1ULZQOoyfs+MqpA/JjZ9TJ0OJ0XXzK9Z8FkPrKpt5MOufia6e
         g3wx5cCp/bVK2ndkb0HSy2gyU0Lp0ATMH5DW4IF2HoUA5DN3w0IArqqkH4Xm4oVdyBDl
         569A==
X-Gm-Message-State: ACgBeo3B9+hMV1Bkf69Ge6JPOmWC5Rpi3N09JONs0qtjOsL/CVrdr0AO
        CmTPim+OJLEVCNaEjIZuJYBpWsp0VhwfAKi1gzs=
X-Google-Smtp-Source: AA6agR4a+aAUOrY7/22t4u2S8rEK3ZpOdZVULlvm/ovSoaStpTZTKbNHyi3D3YSbRS4rMDkm8SYthMC+y5c94J43Sro=
X-Received: by 2002:a67:a649:0:b0:390:88c5:6a91 with SMTP id
 r9-20020a67a649000000b0039088c56a91mr15697280vsh.3.1662444056973; Mon, 05 Sep
 2022 23:00:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220904154639.2623138-1-amir73il@gmail.com> <207e0f01-f625-3f79-42d0-3e87a6882ee7@gmail.com>
In-Reply-To: <207e0f01-f625-3f79-42d0-3e87a6882ee7@gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Tue, 6 Sep 2022 09:00:45 +0300
Message-ID: <CAOQ4uxjpNJ=LOrNSMcJqRchwJsGu3_UUSckg3XWUk5qrNP5w0w@mail.gmail.com>
Subject: Re: [PATCH] fanotify_mark.2: Document FAN_MARK_EVICTABLE
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Sep 5, 2022 at 11:10 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Amir,
>
> On 9/4/22 17:46, Amir Goldstein wrote:
> > Add section about evictable inode marks and example use case.
> > Add possible error case EEXIST related to evictable marks.
> >
> > Reviewed-by: Matthew Bobrowski <repnop@google.com>
> > Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> > ---
> >
> > Hi Alex,
> >
> > This is an update for a new fanotify feature in v5.19.
> > Please wait to see if Jan has any commetns before merging.
>
> Sure.  Also, please check some comments of mine below.
>
> Cheers,
>
> Alex
>
> >
> > Thanks,
> > Amir.
> >
> >   man2/fanotify_mark.2 | 50 +++++++++++++++++++++++++++++++++++++++++++=
+
> >   1 file changed, 50 insertions(+)
> >
> > diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> > index 2696a803a..757ad9159 100644
> > --- a/man2/fanotify_mark.2
> > +++ b/man2/fanotify_mark.2
> > @@ -153,6 +153,44 @@ If this flag is not set,
> >   the ignore mask is cleared when a modify event occurs
> >   for the ignored file or directory.
> >   .PP
> > +.TP
>
> .PP followed by another paragraph macro is a no-op.  Remove .PP above.
>
> Check the 'Paragraph macros' subsection in groff_man(7) for more details.
>
> $ man groff_man
> /^...Paragraph macros
>
> > +.BR FAN_MARK_EVICTABLE " (since Linux 5.19)"
> > +.\" commit 5f9d3bd520261fd7a850818c71809fd580e0f30c
> > +When an inode mark is created with this flag,
> > +the inode object will not be pinned to the inode cache.
> > +Therefore, allowing the inode object to be evicted from the inode cach=
e
>
> I think 'Therefore' should continue the last sentence and be separated
> by ',' or ';' instead of '.', and possibly removing the ',' after it.
>
> > +when the memory pressure on the system is high.
> > +The eviction of the inode object results in the evictable mark also
> > +being lost.
>
> Please rewrap the sentence above according to semantic newlines.
>
> man-pages(7):
>     Use semantic newlines
>         In the source of a manual page, new sentences  should  be
>         started on new lines, long sentences should be split into
>         lines  at  clause breaks (commas, semicolons, colons, and
>         so on), and long clauses should be split at phrase bound=E2=80=90
>         aries.  This convention,  sometimes  known  as  "semantic
>         newlines",  makes it easier to see the effect of patches,
>         which often operate at the level of individual sentences,
>         clauses, or phrases.
>
>
> > +When the mask of an evictable inode mark is updated
> > +without using the
> > +.B FAN_MARK_EVICATBLE
> > +flag,
> > +the marked inode is pinned to inode cache
> > +and the mark is no longer evictable.
> > +When the mask of a non-evictable inode mark is updated
> > +with the
> > +.B FAN_MARK_EVICTABLE
> > +flag,
> > +the inode mark remains non-evictable
> > +and the update fails with
> > +.B EEXIST
> > +error.
> > +Mounts and filesystems are not evictable,
> > +so an attempt to create an evictable mount or filesystem mark
> > +will results with
>
> Some rewording needed ni the sentence above.

How's this:

Mounts and filesystems are not evictable objects,
therefore,
an attempt to create a mount mark or a filesystem mark
with the
.B FAN_MARK_EVICTABLE
flag,
will result in the error
.BR EINVAL .

Thanks for the review,
Amir.
