Return-Path: <linux-man+bounces-2978-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0277AABB654
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 09:41:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 965C93B28EF
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 07:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24BF7267B71;
	Mon, 19 May 2025 07:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="N6e2NHm2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412B0267B86
	for <linux-man@vger.kernel.org>; Mon, 19 May 2025 07:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747640462; cv=none; b=NLBPJ6B1LrmCS99a1r6Zt7GQhk/QeOsx4gqnH7mwOEVWkD3UlNCTr8jd4v0FmJiMXjLA1KyImn5xpHjFRSnRTpVSK4w9ZnGtrYOwzH55+bSsbKTSIHuTg/KXDljAs4Hg0BnS4KhVyoAlTwKlpvhIFdXFVFtfSfXDSWLuZGtbsVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747640462; c=relaxed/simple;
	bh=NpOyUU20WfRVbtAi1h7KZf/y5b0OoKizrxrH4IyHq48=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Se1Hrm+KXf9dKl9tAkHAfVn7JXqVGRV+PUm/x4dyZNNou24kNO4ssA/lwRMEgyhyWX1q21NH5+//uDvkdHVnr9ftt/pTGxGRDzCmJ2MtVPz/8ScE+lKkiXkb1lupy4lqvdPGXxDjIadT+T5vuFqprl8RBMn5yszYF/PterJTYBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=N6e2NHm2; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-72c73b2558eso504844a34.3
        for <linux-man@vger.kernel.org>; Mon, 19 May 2025 00:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1747640460; x=1748245260; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4mU9qseezHOMRVEvMx1KP+9IVWXwCK5iE9VrQQh+fNE=;
        b=N6e2NHm2OrUYuyHLOQhtTXwznE6vKbaJb288goeSU7JtSfb+QcRMkXwkTSvHg2iquc
         0RGJvMd8PAB8CGMM1bGyT97P/NWl0KE0f4CR28R1BpOW1+ghyHwbrG7vMYQjy2PWGKWp
         Ef3n7aqlnE0s4uHcSi7zi1Vd+cNEHLLMqZuIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747640460; x=1748245260;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4mU9qseezHOMRVEvMx1KP+9IVWXwCK5iE9VrQQh+fNE=;
        b=MrbJbf+eEpnFG+twVVU9NrPz7G3ivsCY1yVlVDdwbraVaBa2pmxwnTJn+yy1wxhoNq
         pPovBqI13ZvrVQxF+I30/suBBQd1jYuIjv1MPyQ3W0XlmspH5YNxC70zTBfVx7v2UTlZ
         y0pqBY9eGsOp4blHZU3sa4wVoWR7+kq558JF6m4+FWnCSruowX+H9RjtKSFMsgBXrNUf
         dWzdpC9QwpF+UjtHF7ZtQxBTrqrSEC04PiAq0c9y+sWjr/fdIOc/UdL/Ov3eWt/02IDy
         9vyPWfZisT5msbUj9X25DkFbLv5FkzUfvDCJ1pNgwSozajyBZ1DoKJ0gHH/XsYttNJWI
         xtYg==
X-Gm-Message-State: AOJu0Yy82X0ouKPzgJgKfEyvpx4xpM8pOCUx7qHBd7my7vlsqcdohYFc
	cqR0xCDSgOwgHgoKp35DjWumjmkr0g9AhiQCj0HRyfSToiRHUJ1bDdBYTy/TwljWbfQE1XdzsKM
	oDRH+GiL/EBWxxDd0tQAJrWdDwy12cgy1XfOJk+uy
X-Gm-Gg: ASbGncvVsuL3DmzRjbVqqGRziKZwOekpDxZJa783ttb7U5wO8siz1k/ZNPLEIZJ5dFo
	dNJvBNfU3NJUj1oekkAhomQHnj1TfxC4h3zLQpzAUMfEJeFRiwepX4X+9RL1XJZYwahX3rShXbM
	9kim+236+xkfe3snAKJKGFolIGSSRoGNmu3vWt5ZWRHJCzoktHX75vy4RwKmib
X-Google-Smtp-Source: AGHT+IGZAMf6woFz/p0SXNoKTnpCYOyHjMO1I+1/dThTbiKkv7/4PTgnx9FH/1ig8egydbA5H/2e1mz1qa2voQbOll8=
X-Received: by 2002:a05:6870:8310:b0:29a:ec04:aa18 with SMTP id
 586e51a60fabf-2e3c1c2e2acmr2504129fac.5.1747640460033; Mon, 19 May 2025
 00:41:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1739389071.git.amitpinhass@gmail.com> <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid> <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid> <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix> <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
From: Florent Revest <revest@chromium.org>
Date: Mon, 19 May 2025 09:40:49 +0200
X-Gm-Features: AX0GCFvQxEvQJIegmqcu_TSUBnd1SXUV8bUtaenqHJtSvkust9y4dVyzM37R8Zw
Message-ID: <CABRcYmLmW32ErsaxsYEikbdPEa4UtHLP6RdUD+6CimFcvMV3rw@mail.gmail.com>
Subject: Re: Removing in-source contribution records contributer
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, "Carlos O'Donell" <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 9, 2025 at 2:55=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi all,
>
> I've added to BCC everyone whose copyright notices have been removed
> (those that noted an email).  The full thread for this discussion can be
> found here:
> <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznr=
udgioox3nn72@57uybxbe3h4p/T/#u>
>
> Please let me know if it's okay to you to transform your copyright
> notices to make them uniform?  That is, do you approve
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D9f2986c34166085225bb5606ebfd4952054e1657>
> in what affects you?

Yes. Thank you!

> I've generated the BCC with
>
>         $ git show 9f2986c34166085225bb5606ebfd4952054e1657 -- man \
>         | grep '^-[^-]' \
>         | grep @ \
>         | grep -o '[^     ]*@[^ ]*' \
>         | sed 's/,//g' \
>         | sed 's/\.$//' \
>         | sed 's/.*(//' \
>         | sed 's/<//' \
>         | sed 's/>//' \
>         | sed 's/\.)//' \
>         | sed 's/)//' \
>         | sort \
>         | uniq \
>         | sed 's/^/Bcc: /';
>
>
> Have a lovely day!
> Alex
>
> On Tue, Apr 08, 2025 at 11:28:29PM +0200, Alejandro Colomar wrote:
> > Hi Carlos,
> >
> > On Tue, Apr 08, 2025 at 04:18:35PM -0400, Carlos O'Donell wrote:
> > > On 4/8/25 8:42 AM, G. Branden Robinson wrote:
> > > > Hi Alex,
> > > >
> > > > At 2025-04-08T01:05:02+0200, Alejandro Colomar wrote:
> > > > > On Thu, Feb 13, 2025 at 12:20:58AM +0100, Alejandro Colomar wrote=
:
> > > > > > On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson w=
rote:
> > > > > > > If you do this, I suggest you replace these lines with someth=
ing
> > > > > > > like:
> > > > > > >
> > > > > > > .\" See the Git revision history at
> > > > > > > .\"   $URL
> > > > > > > .\" for records of changes and contributors to this file.
> > > > > >
> > > > > > Good idea.
> > > > >
> > > > > I'm thinking I won't do that.  I don't want to add that overhead =
to
> > > > > each page.  People interested in the history of a page will alrea=
dy
> > > > > have a look at the git history, and there they'll find the old st=
ates
> > > > > of a page, in which they'll find this information.
> > > > >
> > > > > And it would require some non-trivial work to add this note
> > > > > consistently.  I'll go with a removal without replacement, I thin=
k.
> > > >
> > > > Acknowledged.  It's been a whole 7 weeks for so, so I don't clearly
> > > > remember my reasoning from February, but my suggestion may have bee=
n at
> > > > attempt to find a "conservative" alteration to file content or the
> > > > expressed meaning of the comments.
> > > >
> > > > But, what's conservative in one dimension often is not in another, =
such
> > > > as "labor required".
> > > >
> > > > I also agree that while Git is a complex suite of tools, "git log" =
is
> > > > not among its deeper magicks.  At least not when run without argume=
nts.
> > >
> > > We did something similar in glibc and created a CONTRIBUTED-BY file a=
t the
> > > top-level and moved all contribution lines out of the respective
> > > files into the top-level file.
> >
> > Yep, a CREDITS file would be interesting.  I wouldn't keep info about
> > which specific files were written by each contributor.  That seems
> > something more appripriate for git-log(1).  The pre-git contributions
> > will be visible in old versions of the pages (i.e., if one sees
> > Jane Random Developer in CREDITS and wonders which pages she contribute=
d
> > to, they can `git log -S 'Jane Random Developer'` and similar commands
> > to find out.
> >
> > Thanks!
> >
> >
> > Have a lovely night!
> > Alex
> >
> > >
> > > e.g.
> > > ~~~
> > > The glibc project stopped adding "Contributed by" lines to source fil=
es in 2012
> > > in favour of acknowledging contributors in the glibc manual and throu=
gh the git
> > > log.  The record of existing "Contributed by" lines have now been mov=
ed to this
> > > file to acknowledge contributions by these developers to glibc.
> > >
> > > argp/argp-test.c:
> > >     Written by Miles Bader <miles@gnu.ai.mit.edu>.
> > >
> > > argp/tst-argp1.c:
> > >     Contributed by Ulrich Drepper <drepper@redhat.com>, 2002.
> > > ...
> > > ~~~
> > > The top-level CONTRIBUTED-BY has ~3,000 Contributed/Written by lines.
> > >
> > > Sme of the authors predated the use of git and so it was simpler to k=
eep the
> > > lines somewhere as part of the transition away from "Contributed by"-=
style
> > > lines.
> > >
> > > --
> > > Cheers,
> > > Carlos.
> > >
> > >
> >
> > --
> > <https://www.alejandro-colomar.es/>
>
>
>
> --
> <https://www.alejandro-colomar.es/>

