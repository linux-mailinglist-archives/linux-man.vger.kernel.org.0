Return-Path: <linux-man+bounces-3983-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 255C8BA0415
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 17:23:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8115E1796BF
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 15:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C41C12F3C00;
	Thu, 25 Sep 2025 15:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="06U/hKLJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA6D2E229E
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 15:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758813440; cv=none; b=RP6Y1OnWZwikKAAwKhmE/7QS/Cb+QAvq1Psog2klbxXLHydIosN1EATcAtItTul0fSxQvifg2Lxw/m4cIaGlxIU0BMku1RNMV9TmBidp62f+REVHkqyvFWJX1baLnDQZBQRbMII/fyfZ48rwS3XtQvyyotC5Xtd0Ch1PLbswSgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758813440; c=relaxed/simple;
	bh=2jiUpKEKr45arwSie/l9teH7tmcVs6hrWBJhneXKd9U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J8f5BIGb9u0+tY1tboksFV8M+s4FvZHibrB4y2yQPESrAb8gkIAi5A+rw1egaI3Di/a73lb+hw/AOSPBKA1BX2pA4Q8ctYKstOgwiKqckezbHMo+3UMCUOP+4KU4zHBx1PASlPSMFygGlr4uDk1ei4ihg+Sbh+2/3Qev1W1ru5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=06U/hKLJ; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-30cce872d9cso1072685fac.1
        for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 08:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1758813437; x=1759418237; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BOB3poAFyVxB4B/1wVuTVH1xJxjur2p8fw2Xhsq4JVc=;
        b=06U/hKLJ5Qdy8F4SlmGVqFn7x97E2uX/aQ8aOimB+F4B0SD7uwLXVD+yUNKOBLvihQ
         pR6BXbYjGfnCgfHssy+5rOHBEnOJKYtIMogZeC8r78RBeDiamR6UGfubzF8kAM7+dVYv
         /xxFP6QYbMJ8CdDrKo9dX5bdO7fxaPtxuMNMLv30JMiNMNvsGxUR7BN284H5Cg66ShoO
         nwDEPFAx3g/XGSVefV+8TodvARbPonbOW75nQWplDvioY1Cx1Cocf70dJdc5qbmEMZfO
         u+UUd3mCcquD+p5qoNO4lcexEcknMb8NJ715NTxXLnN0vZsKuhVXanpujz9GVt0R9d33
         5Y5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758813437; x=1759418237;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BOB3poAFyVxB4B/1wVuTVH1xJxjur2p8fw2Xhsq4JVc=;
        b=nX5PTqxSsDm0Uq4yFCGL8z+RdVxHUTa5PG52tTWuZA7jV4WYc4RLXAD6QPhlTVwwR1
         EVZ71z6ZmwrIYUPd6sqZLK4MYE5gGxPpcVNMgymnLggQh1seP1Sqqht3dnQBn+trxnST
         f5g9FcZ1QIkQwcHTM8M4xHUiHPtS8mlnG1yzy4ibweBvUS1zbCzT0L8Bfp6+CmPUEUVK
         KdWRPOptHr0wXSvy99tuSpfYFHrY3VCiha4NtRk7SRsYWZbeFNh/8UvNLFJY7PgHYnGV
         G8raYi4vZOTjM1ma2yO7PA+5DtVQmEt9rXOs3SR9JLa1en3BZULHM2I2mZjejTTPQf8D
         bpIA==
X-Gm-Message-State: AOJu0Yy93Wh8u/YEw331qlRvp3/2hW/MWmiOzo1IZzVUSzT4XimIeRVU
	v0khqgidKnLXRBDNStxR3aXfKr7gq7+PKCgUJyu7VeZZLv3p8KafY4FpYH+VfLCrA/s4za3lVjv
	YwWWJmlIPXRVAaDSo/jedl3o7ybgO8IFkYfwL8Bn9
X-Gm-Gg: ASbGncsT4wFZ6dZMCZDY34SIDMQDyqyuuLG1HMSOOI4/ystQN4T8FkabQlBaDgGVWCU
	JYUl2+zmc4kRPZTYH/zU3/Jro13UXkMvXYi+HPD93e+YPVsYR1S3T5Zy+qtF4I3QQa22T23IyQs
	E79vL9nubDM6SgBkylF1eIIvhS06zE7qq1P/QEY7XyataFtcY7pTRhHwtKgZFM/epyfUyBGxGuE
	q/Lq0Q/ZPmAT3o=
X-Google-Smtp-Source: AGHT+IHCf29Io85QsAB6tzTFV0gp96PzNVV2fNwa1LxWQaGA49lgtMlU6oUE8T66HESckrPCMbe20rTGLUlDfepxZNA=
X-Received: by 2002:a05:6871:2b07:b0:321:558d:5bb2 with SMTP id
 586e51a60fabf-35ebe95467dmr2138618fac.10.1758813437072; Thu, 25 Sep 2025
 08:17:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924152313.1902586-1-jrreinhart@google.com> <ssplut22iy7ipmbfkm57hfrzjq6ii3hjffvixddxs3yc3dui66@hhvb4lckwbzs>
In-Reply-To: <ssplut22iy7ipmbfkm57hfrzjq6ii3hjffvixddxs3yc3dui66@hhvb4lckwbzs>
From: Jonathon Reinhart <jrreinhart@google.com>
Date: Thu, 25 Sep 2025 11:17:05 -0400
X-Gm-Features: AS18NWBLBNK7X_Tp5iPJQojcdvkKo_skIQWP83ih8EydaXGQmOPhiFgHM0HL8XU
Message-ID: <CAJJa5HwukWFWQHkZwVOhuXZyS_ZpYYNFZR4KR2xesak1uiP7Ww@mail.gmail.com>
Subject: Re: [PATCH] capabilities.7: Expand CAP_SYS_PTRACE to include /proc
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>, 
	Rishi Sikka <rishisikka@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Thu, Sep 25, 2025 at 7:35=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Jonathon,
>
> On Wed, Sep 24, 2025 at 03:23:13PM +0000, Jonathon Reinhart wrote:
> > CAP_SYS_PTRACE is required (via ptrace_may_access) for accessing variou=
s
> > things in /proc, so include it in the CAP_SYS_PTRACE bullet list.
>
> Was it always needed?  Or when did this change?  Could you please
> provide links to the relevant commits or source code (or any other
> useful source of information)?

From what I can tell, these ptrace-associated restrictions on /proc have
existed in some capacity ~forever.

Even in the initial git commit (1da177e4c3f4 Linux-2.6.12-rc2), accesses
to /proc/<pid>/{mem, environ} check may_ptrace_attach() which calls
capable(CAP_SYS_PTRACE).

The affected set of files in /proc and the exact semantics have changed
over the years, but the general restriction has, AFAICT, always been there.

A few more notes from my archaeological dig:

The relevant functions have used different names (ptrace_may_access,
ptrace_may_attach, may_ptrace_attach, MAY_PTRACE).

Here are some relevant commits:

006ebb40d3d6 Security: split proc ptrace checking into read vs. attach
831830b5a2b5 restrict reading from /proc/<pid>/maps to those who share
->mm or can ptrace pid
5096add84b9e proc: maps protection
df26c40e5673 [PATCH] proc: Cleanup proc_fd_access_allowed
778c1144771f [PATCH] proc: Use sane permission checks on the
/proc/<pid>/fd/ symlinks
1da177e4c3f4 Linux-2.6.12-rc2

I could include this in the commit message if you'd like, but after
digging through this, I'm not sure it would really add much value.

Thanks,
Jonathon

>
>
> Have a lovely day!
> Alex
>
> >
> > Also, add a hint that other things throughout the kernel may check this
> > via ptrace_may_access().
> >
> > Signed-off-by: Jonathon Reinhart <jrreinhart@google.com>
> > ---
> >  man/man7/capabilities.7 | 16 +++++++++++++++-
> >  1 file changed, 15 insertions(+), 1 deletion(-)
> >
> > diff --git a/man/man7/capabilities.7 b/man/man7/capabilities.7
> > index f8b389f1e..f9b9bee23 100644
> > --- a/man/man7/capabilities.7
> > +++ b/man/man7/capabilities.7
> > @@ -625,6 +625,15 @@ Use
> >  Trace arbitrary processes using
> >  .BR ptrace (2);
> >  .IP \[bu]
> > +inspect sensitive information of other processes via
> > +.IR /proc
> > +(e.g., reading
> > +.IR /proc/ pid /maps ,
> > +.IR /proc/ pid /mem ,
> > +or reading symbolic links
> > +.IR /proc/ pid /exe ,
> > +.IR /proc/ pid /fd/* );
> > +.IP \[bu]
> >  apply
> >  .BR get_robust_list (2)
> >  to arbitrary processes;
> > @@ -635,7 +644,12 @@ and
> >  .BR process_vm_writev (2);
> >  .IP \[bu]
> >  inspect processes using
> > -.BR kcmp (2).
> > +.BR kcmp (2);
> > +.IP \[bu]
> > +perform other privileged process-inspection and debugging operations.
> > +(See uses of the
> > +.IR ptrace_may_access()
> > +kernel function.)
> >  .RE
> >  .PD
> >  .TP
> > --
> > 2.51.0.534.gc79095c0ca-goog
> >
> >
>
> --
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).

