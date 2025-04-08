Return-Path: <linux-man+bounces-2754-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2763FA8142C
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 20:00:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D37DF1BA3899
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 18:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5759B22577E;
	Tue,  8 Apr 2025 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LUJIWuNo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8935F14B092
	for <linux-man@vger.kernel.org>; Tue,  8 Apr 2025 18:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744135233; cv=none; b=P+/09ROQujsOwKsJM3ywNQ68/+b3X/rnOZQgmmzTUYv8xnOBkhMsRCFG5KkrpGKAupHnC6Mi5G3EoXg5EUQts6aOQQ87jFZlqMf9vjCRTE0w4F9NVFPyP8UBFIf3INjmodYSTwFTg49Bor9vgqwgrsVewsG1qb43QRCmRsHTTm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744135233; c=relaxed/simple;
	bh=h1ZYkHmS/Oaq4kV0a9klOVHcTiUacEaykZQkwClXji8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qeGvQSj/xGWWBaQFAyZBr7EyggzL+LVV/ekCxhCSEwMaL+UsmGhydldNa7ycuhgpGCe2VMTT677veMEICiXjHHbaEfFIz7V8VekW2CskVgD+hEa7TVBzjZx0N1nIwhzcllX1oOkUca7RzQfsOhafGnADHy6yGRr73W7oC/Fd334=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LUJIWuNo; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-301a4d5156aso5594719a91.1
        for <linux-man@vger.kernel.org>; Tue, 08 Apr 2025 11:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744135231; x=1744740031; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yEWj+WMxxJBOfVbWJRHgUitmLcLQH+7ey6QxY0ZtY78=;
        b=LUJIWuNoIRAiOxpji6qkoyoDluRmiujDFLg09GIy5HkCalMWAjOUu9r6ovfHHHxA0/
         s5ES98xng5XukO/tautHaROb2qzxzwlf33IhjreB3FGFCftvTjpkblx33m4njPls4ZdP
         I/fiEgo1YcIa+MTXdpRNn/WR8s8hjIhgiySw9IADcuNdgk2FCDVIGOwuJ4KBj/KIqVKh
         f/deRrLDrwTeUcU0Bj8jXGevd8ncQoaqPKeBFpk7KDdJwx0+X7Yo/CLGpA3N39MZwFaN
         yoeeW88a8kfykdJJ/o/X0mbaDYgp6nTEz9mE9XyIhDC81RSb0Q41cTra/fP5jylaLAdt
         mVWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744135231; x=1744740031;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yEWj+WMxxJBOfVbWJRHgUitmLcLQH+7ey6QxY0ZtY78=;
        b=WiG5E2qLJsk8YarUpojJ1Mg3W6excBCNVTLPV+XBmg9xo66GjNyxaNlKRAWYvBSmnN
         21FDSvRkCeYwISBPWLrPzV0i0qnlJ/1YXS+T19lOEhUyuC/o4d8tTXqodxdCCWvnA73h
         FRECqpJLRJp7zVxMzLYTNetw8nfbsBcuW4bSODZwd1bNZ/k6kxf26hnieg5297vL3KL6
         55nOf2hLT63c4TZNEHSIElVM+xe4iJjGmbAo+ZXZvjnOWLA4P76eSGF63RIEpZJ+JUOC
         PyAOQN1qmmwEaKS16Vi8O0OIi82vUg95HbKr5SZua7VdkXo/kv8S7gIPvIV8BRrVH4NT
         J7tw==
X-Gm-Message-State: AOJu0YwM8STQeaufEeuDXmg+CdP67TNO3MQaaqV9k+4Lel+SSWCJVTv3
	7vOZIIswVoigfp2KbbChimQjorZo75fvsdONyBqhYX1sIBVRDjiMAdXRFv4L7yrDbS9dY4jN0vI
	YUSUHGse182/vWEmwy67x8nXJfWg=
X-Gm-Gg: ASbGncvXXbJm+LW7UgkCoAZJuszT25hXC8/WBay90LToy+UsEgKEJnOiTXLNkCk9/Eq
	bAu+qaq2PDLaeQO6ZrhtarhFmJcYDa6xbk7+eRI94cR72YD7g5+3EkDGwDJvzJZOOvzTmP1VXJN
	KI5tiw6WYbJdxzFWhBdkAbXIYPlA==
X-Google-Smtp-Source: AGHT+IG2HX2iMBYeFipL4E4O9YolBILg/MjD6HwN+a8vbtMAlBbPWKj8y7s+nLpD95MmRL2Ec1S5x/FE5MbyPz3noT4=
X-Received: by 2002:a17:90b:1c0c:b0:2fe:a79e:f56f with SMTP id
 98e67ed59e1d1-306dbbae53dmr237379a91.13.1744135230740; Tue, 08 Apr 2025
 11:00:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1739389071.git.amitpinhass@gmail.com> <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid> <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
In-Reply-To: <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Tue, 8 Apr 2025 20:00:19 +0200
X-Gm-Features: ATxdqUFeP-zzVD8gjiQIsgtePThufkk0udCWTVSV5pioFWG6dKw9lHbDY1SKBVc
Message-ID: <CACGkJdsEQENG1ZOQ14iueMzh4p5ywDenYp5eaN-itvrFfK+kmg@mail.gmail.com>
Subject: Re: Removing in-source contribution records contributer
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Amit Pinhas <amitpinhass@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 13, 2025 at 12:20=E2=80=AFAM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Branden,
>
> [Subject reformed to the topic of in-source records of contribution]
>
> On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson wrote:
> > Hi Alex,
> >
> > At 2025-02-12T21:26:20+0100, Alejandro Colomar wrote:
> > [...]
> > > >  .\" Modified 2004-06-24 by aeb
> > > >  .\" Modified, 2004-11-30, after idea from emmanuel.colbus@ensimag.=
imag.fr
> > > > +.\" Modified 2025-02-12, after correction from <amitpinhass@gmail.=
com>
> > >
> > > We don't update those anymore.  We now rely on the metadata in git(1)=
.
> > >
> > > Every now and then, I consider if I should just remove all of those
> > > lines, to avoid confusing people.  If anyone is interested in the
> > > history before git(1), one can certainly look at those lines in old
> > > versions of the pages.  Anyone reading the mailing list opposes
> > > removing those lines?  (I'll ask again before removing anything, with
> > > a proper subject line.)
>
> Okay, time has come to open this melon.  :)

In strace, FWIW, we have the following:
 * the copyright notice looks like "Copyright (c) <year>-<year> The
strace developers.";
 * we have a script [1] to consistently add/update those before the release=
;
 * strace(1) refers to CREDITS for the list of contributors, which is
generated for the dist tarball by [2];
 * dist tarball also has ChangeLog, that is generated from git history by [=
3].

That way, there's minimal attribution noise in the files, and some
minimum level of attribution is done for the distribution tarball.

[1] https://gitlab.com/strace/strace/-/blob/master/maint/update_copyright_y=
ears.sh
[2] https://gitlab.com/strace/strace/-/blob/master/Makefile.am#L112
[3] https://gitlab.com/strace/strace/-/blob/master/Makefile.am#L101

--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

