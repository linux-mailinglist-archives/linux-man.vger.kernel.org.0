Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AE5777AA2F
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 18:59:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230334AbjHMQ7n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 12:59:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjHMQ7n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 12:59:43 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E18A1B5
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 09:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1691945938;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=1AweSZ3pvJ2kcW678oIC8BKy9FVifFIVncf9w7mug9A=;
        b=J/rLU2oFaz25jex9hPxFJGIzTam3WqOWW8s9nMR7P1fTIDaFNUPF05ijFvFXaA8ZMhcjHr
        BvPeDsFQ1Ej+6oouW+UqFl+9B4FRpnxaKBPgeG5u2K9Ao5bJ0QDuqh1EkBf7dVCj1h+1SA
        M0v5lBaAS4qyBe3ovNsCwJFA9AedRKY=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-518-QbXQEUYUOwSU2kF3XFrvqg-1; Sun, 13 Aug 2023 12:58:56 -0400
X-MC-Unique: QbXQEUYUOwSU2kF3XFrvqg-1
Received: by mail-lj1-f200.google.com with SMTP id 38308e7fff4ca-2b9e8abe56bso34639671fa.2
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 09:58:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691945935; x=1692550735;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1AweSZ3pvJ2kcW678oIC8BKy9FVifFIVncf9w7mug9A=;
        b=RjSYtf5yv6217dK8x57aZj7rcEV6M1ZGlNWZHHgDOHdkhP+UGNLtAF36Yuy8h8ubRG
         D44PbIkUGZ02rcbjQcfR07Jtw6LP59Jco06p4m+wzcmUoOo6F8ksfY8dhpLL+tai+P/l
         7UP0aWiiR58YUxZ5p297tsn8uvFAqlcgx5U9fXXAPRvXT3fcwWvpODBXIO58fEaaCpKY
         GOmiT6rHyZBZErccuyKbZs7s1CgrnzfwhxrvORLBrUy29QzSF+W+ZyjT1J0ikzSQP3i9
         t7AOY/uVcdUyDO0qx47sES00vR+DPlw05eH9PO6erQE5CuVXtOHPKCbBt3EP4vKjXsAK
         cLpQ==
X-Gm-Message-State: AOJu0YxB3QIKnW5aulJKrH+6q7bXK0Yfkz/dSiOtMbky6x1jcDRTkuuQ
        zHGE/S5n1dOf33TQ7a45xB6z+0pWLwlFqlQpw8ur33dqlcun1G+bBwFgkYNALScbAn+MUYD7GTw
        YJw8+y4rqvmQHOwDoe8qOSlnSXVv9UAQ8iAMB
X-Received: by 2002:a2e:9110:0:b0:2ba:18e5:1063 with SMTP id m16-20020a2e9110000000b002ba18e51063mr4504023ljg.50.1691945935196;
        Sun, 13 Aug 2023 09:58:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrhO9/HKpbOxd8P+AVyEvipVyC/TtuNMsyHE5nJgL1pKLh5sqdRN57YYRUHD7QbHLSl7jRLleg8WVZJhbpwOQ=
X-Received: by 2002:a2e:9110:0:b0:2ba:18e5:1063 with SMTP id
 m16-20020a2e9110000000b002ba18e51063mr4504011ljg.50.1691945934761; Sun, 13
 Aug 2023 09:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com> <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
 <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
 <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org> <CAMO6KYqROAQ5fFMcAESJGvBZ-kiC_VDCegZPJaRAF=Nao_1dJg@mail.gmail.com>
 <92db3ed7-b3ed-6508-ff3f-aa0abef764ed@kernel.org> <CAMO6KYo7+y1a4WY5R2pQ+y4Y2k+wCbGLYwU7cih_mDHOT=HFnw@mail.gmail.com>
 <8068e7b6-5cdf-4f0e-6344-0dd6263625f4@kernel.org>
In-Reply-To: <8068e7b6-5cdf-4f0e-6344-0dd6263625f4@kernel.org>
From:   Shani Leviim <sleviim@redhat.com>
Date:   Sun, 13 Aug 2023 19:58:17 +0300
Message-ID: <CAMO6KYpYO2-jwoiCCJO7we52eDFXMh8OTGn_jf4x1hjCxkjokA@mail.gmail.com>
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to MT-Safe
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org,
        automotive-devel@redhat.com, "Carlos O'Donell" <carlos@redhat.com>,
        Gobinda Das <godas@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

That's very strange
Working on master, my HEAD commit is commit
60eb580d1e836977d57355b6519f32e37bdc3392.
I might be missing something.

Regards,
Shani Leviim


On Sun, Aug 13, 2023 at 6:12=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> On 2023-08-13 16:37, Shani Leviim wrote:
> > Hi Alex,
> > I am re-attaching it.
> > I changed its name once it was created, so it may have caused an issue.
> >
> > git apply --verbose
> > 0001-strerror.3-Change-strerror-reference-from-MT-Unsafe-.patch
> > Checking patch man3/strerror.3...
> > Applied patch man3/strerror.3 cleanly.
> >
> > Sorry for the inconvenience
>
> No problem :)
>
> However, it still doesn't apply to master.  I see that it applies to
> somewhere between man-pages-6.03 and man-pages-6.04.  Could you please
> rebase it to either a release tag or the master branch, or specify the
> base to which it applies?
>
> Thanks,
> Alex
>
> >
> >
> > Regards,
> > Shani Leviim
> >
> > On Sat, Aug 12, 2023 at 1:52=E2=80=AFAM Alejandro Colomar <alx@kernel.o=
rg> wrote:
> >>
> >> Hi Shani,
> >>
> >> On 2023-07-30 15:41, Shani Leviim wrote:
> >>> Thanks, Alex,
> >>> Attaching the patch (see attachments)
> >>>
> >>> From: Shani Leviim <sleviim@redhat.com>
> >>> Date: Sun, 30 Jul 2023 15:51:07 +0300
> >>> Subject: [PATCH 1/1] strerror.3: Change strerror() reference from MT-=
Unsafe to
> >>>  MT-Safe
> >>>
> >>> The information in this patch was obtained from a glibc upstream patc=
h,
> >>> commit ID 28aff047818eb1726394296d27b9c7885340bead
> >>>
> >>> According the patch above, for glibc versions >=3D2.32,
> >>> strerror() is considered MT-Safe, and the man page should be changed
> >>> accordingly.
> >>>
> >>> Signed-off-by: Shani Leviim <sleviim@redhat.com>
> >>
> >> The patch doesn't apply.  Can you please check what's wrong with it?
> >>
> >>
> >> $ git am patches/0001-strerror.3-Change-strerror-reference-from-MT-Uns=
afe-.patch
> >> Applying: strerror.3: Change strerror() reference from MT-Unsafe to MT=
-Safe
> >> error: patch failed: man3/strerror.3:238
> >> error: man3/strerror.3: patch does not apply
> >> Patch failed at 0001 strerror.3: Change strerror() reference from MT-U=
nsafe to MT-Safe
> >> hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
> >> When you have resolved this problem, run "git am --continue".
> >> If you prefer to skip this patch, run "git am --skip" instead.
> >> To restore the original branch and stop patching, run "git am --abort"=
.
> >>
> >>
> >> Thanks,
> >> Alex
> >>
> >>> ---
> >>>  man3/strerror.3 | 31 +++++++++++++++----------------
> >>>  1 file changed, 15 insertions(+), 16 deletions(-)
> >>>
> >>> diff --git a/man3/strerror.3 b/man3/strerror.3
> >>> index 862e153ee..6a3d83164 100644
> >>> --- a/man3/strerror.3
> >>> +++ b/man3/strerror.3
> >>> @@ -71,11 +71,12 @@ part of the current locale to select the
> >>> appropriate language.
> >>>  is
> >>>  .BR EINVAL ,
> >>>  the returned description will be "Invalid argument".)
> >>> -This string must not be modified by the application, but may be
> >>> -modified by a subsequent call to
> >>> +This string must not be modified by the application,
> >>> +and the returned pointer will be invalidated on a subsequent call to
> >>>  .BR strerror ()
> >>>  or
> >>> -.BR strerror_l ().
> >>> +.BR strerror_l (),
> >>> +or if the thread that obtained the string exits.
> >>>  No other library function, including
> >>>  .BR perror (3),
> >>>  will modify this string.
> >>> @@ -100,12 +101,12 @@ For example, given
> >>>  as an argument, this function returns a pointer to the string "EPERM=
".
> >>>  .\"
> >>>  .SS strerror_r()
> >>> -The
> >>>  .BR strerror_r ()
> >>> -function is similar to
> >>> +is like
> >>>  .BR strerror (),
> >>> -but is
> >>> -thread safe.
> >>> +but might use the supplied buffer
> >>> +.I buf
> >>> +instead of allocating one internally.
> >>>  This function is available in two versions:
> >>>  an XSI-compliant version specified in POSIX.1-2001
> >>>  (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.=
13),
> >>> @@ -238,7 +239,7 @@ Interface    Attribute    Value
> >>>  T{
> >>>  .BR strerror ()
> >>>  T}    Thread safety    T{
> >>> -MT-Unsafe race:strerror
> >>> +MT-Safe
> >>>  T}
> >>>  T{
> >>>  .BR strerrorname_np (),
> >>> @@ -249,6 +250,10 @@ T{
> >>>  .BR strerror_l ()
> >>>  T}    Thread safety    MT-Safe
> >>>  .TE
> >>> +.PP
> >>> +Before glibc 2.32,
> >>> +.BR strerror ()
> >>> +is not MT-Safe.
> >>>  .hy
> >>>  .ad
> >>>  .sp 1
> >>> @@ -292,13 +297,6 @@ to
> >>>  if the error number is unknown.
> >>>  C99 and POSIX.1-2008 require the return value to be non-NULL.
> >>>  .SH NOTES
> >>> -The GNU C Library uses a buffer of 1024 characters for
> >>> -.BR strerror ().
> >>> -This buffer size therefore should be sufficient to avoid an
> >>> -.B ERANGE
> >>> -error when calling
> >>> -.BR strerror_r ().
> >>> -.PP
> >>>  .BR strerrorname_np ()
> >>>  and
> >>>  .BR strerrordesc_np ()
> >>> @@ -309,4 +307,5 @@ are thread-safe and async-signal-safe.
> >>>  .BR error (3),
> >>>  .BR perror (3),
> >>>  .BR strsignal (3),
> >>> -.BR locale (7)
> >>> +.BR locale (7),
> >>> +.BR signal-safety (7)
> >>
> >> --
> >> <http://www.alejandro-colomar.es/>
> >> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>
>
>
>
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>

