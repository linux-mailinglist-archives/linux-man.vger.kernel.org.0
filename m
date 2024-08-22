Return-Path: <linux-man+bounces-1652-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6955495BC07
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 18:34:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 221FA2822E7
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 16:34:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C7B71CDA17;
	Thu, 22 Aug 2024 16:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="AoAiRENB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4187B1CCEEE
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 16:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724344469; cv=none; b=SorCqa/bcg+cjOfGNIjAotppupu9LQ0OFjOCqnDLbVCPtBNVoj38ETz4HLvmSTdJjFZaMAk0y+8IHrf0NPgM8jth0KSXggZkJ6ncgBxEVcn8TK/u+Nqf8o1sbGN/ZQak0oJMaFDoINQxS0aO/eSkQdsPYLouBIJqAyu6tmi3SNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724344469; c=relaxed/simple;
	bh=nzHYsDx7a+Wb5bp/atC0/rfQ5ALcl6dMNiJMK8I3qs8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MqFup6h4Tp13wxW1k7txRfM8gOgjVdXG7KQH7JG3Qn4TYGtJI6JbX0CWIPV+YFlD6wwbb/xx7of3dDHMB+qPURC46yXxSmt7SpW+WUWKpF9C6+Cmm/PBx0hj9y6bJjBv8uPLlyuS+qBo6Ge4fKh37Z1arrxzbWlBFQe0CoPDcro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=AoAiRENB; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6bf7707dbb6so7758876d6.0
        for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 09:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724344463; x=1724949263; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0HLmj3NdxkpQcvIgNQKtvuQMQq+3DwBsg6ZzyH0/1ms=;
        b=AoAiRENB4WKcf/0C81BMz2kIU96t9/BySh++fSNFu/J/BA7nuOeLHtP5Ayn5tiGtgY
         Xy+9tGoRU1c3X7/AxdwDnfO+DCij7zNoZYCccnKRNlOfvvYO2QyEc9LJLouRJz6Sak+w
         Z+GWH/Jm2V5LTYcGaeQGeaeVhgWS3bplKpFXFB4FPuD1wWcuv+TULMdVE8gSrvg3BHWW
         15xvr8RpSQVS5hqEUgS0hFUPru4m+8q7K4K9cuc8idnLV39+pfYtMqRmJJwpL1Pck1tM
         Pe49q4xmYXAuBKNGR7dXUVWyMvLWt5RDOExh2cHISQ5lgKji6DB7m/NZThQMMiYLqURl
         oeeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724344463; x=1724949263;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0HLmj3NdxkpQcvIgNQKtvuQMQq+3DwBsg6ZzyH0/1ms=;
        b=G+fxWeVVaBpsURFGXmG9SUCeRpw/HSXciwVDyhWSzA41qBO/xeEbZy9h9K29g/Cg5+
         gZ3GdYrTN/dKu9EByzxlwwJJa6ZykFsbpGJVwczLbeeRD6D3cjmI3OYRheZAPMjCYPgD
         B+l6fA/6sPn83+E9XxjOXAeAl/O4noVMIHHXa77vgrkm4DbeF4TBZuTdRD9bJ6LRWwty
         Dtx0MGu135pQnEatRAU4sWJLcFkgTHPMPSywG4yBduvmnB6ejEaqP6fbn0YppTJwyS7w
         LD4b49CzJUKcW7cDPzSjjPFmSz/8+IbU93HExvqFQQNCImddb+AMGDjrfRerP7kHZovl
         rWOg==
X-Forwarded-Encrypted: i=1; AJvYcCXhVUZ2lR9c0Ipq45MSfp/fRBmJzfnV+S2HrnxmviwwoNTmyAg4xF6yknhzYaryldv2pC+FtI0Pldc=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw9YcjfvwdtKvIwkSJMdwc0MzGk91qHuT5E/A+k/6q3rd6RKDj
	JcbgcXbjTeR6c4PdSs+e16w21p6puwFIDAPSCUKQk//cmQ02QRIsZI9iRgagOIP72ACYHpIUFJd
	eMzBUFbN/OqPOfHnHq+vPesu5AUjse35ZSPMl
X-Google-Smtp-Source: AGHT+IHCM4HoEOAWqrzRYJ/JOjotuLJ52mGAXAw5SmSUw6GhG5uwY+6BfRyV3ocNsUKVqr4O2aOr3sEnvsc/doewMS8=
X-Received: by 2002:ad4:5b86:0:b0:6bf:835a:87b6 with SMTP id
 6a1803df08f44-6c160cbb6e0mr57376676d6.27.1724344462769; Thu, 22 Aug 2024
 09:34:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
 <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org> <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
 <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
 <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org> <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
 <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org> <CAMe9rOpSYOG-J1H+pLWHp5aNtSFuoHo=ZFS5H17jhK2obZtddQ@mail.gmail.com>
 <CAJgzZorgr+vHuQgQyMkMZPwWjDpr=b1ibkv4U0B2V9Lh=K_dag@mail.gmail.com> <lnrhoiigxf7ft6p4lv7x5euyeu6qwdqndmhjxr36orkaxztrkw@qsazxkgfyzvn>
In-Reply-To: <lnrhoiigxf7ft6p4lv7x5euyeu6qwdqndmhjxr36orkaxztrkw@qsazxkgfyzvn>
From: enh <enh@google.com>
Date: Thu, 22 Aug 2024 12:34:11 -0400
Message-ID: <CAJgzZooftn7zPoSa8_P+OuQ2rH9ZXnsFnrZXcHA8oxXq7q_2-w@mail.gmail.com>
Subject: Re: arch_prctl()
To: Alejandro Colomar <alx@kernel.org>
Cc: "H.J. Lu" <hjl.tools@gmail.com>, 
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, libc-alpha <libc-alpha@sourceware.org>, 
	linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 12:27=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Elliott,
>
> On Thu, Aug 22, 2024 at 12:18:21PM GMT, enh wrote:
> > On Thu, Aug 22, 2024 at 10:05=E2=80=AFAM H.J. Lu <hjl.tools@gmail.com> =
wrote:
> > > On Thu, Aug 22, 2024 at 5:21=E2=80=AFAM Adhemerval Zanella Netto
> > > <adhemerval.zanella@linaro.org> wrote:
> > > > Although we do use __transparent_union__ we have to still handle ve=
ry old
> > > > compilers:
> > >
> > > We can hide the prototype for the older compilers.  Softwares need to
> > > deal with the missing prototype anyway.
> >
> > (avoiding source incompatibility via mismatching declarations is
> > perhaps a reason to just go with the kernel signature, since that's
> > what the folks i've seen `extern` this function themselves seem to
> > use...)
>
> I'd rather add a diagnostic for those who define it themselves now,
> than providing a sub-par prototype for eternity.  I guess the existing
> number of users is small, and it doesn't break binaries, just
> compilation.

yeah, afaict it's basically just "qemu-like things" and the occasional
debugging tool.

> Those will probably just need to add an ifdef for the glibc version that
> added the prototype, so it's an easy fix.

no, they'd just have to change their declaration to match whatever
glibc ships. (which is definitely more verbose if it's any kind of
union.)

i don't have a strong opinion, other than "i want to make sure that
bionic and glibc have the _same_ declaration so that it's at least
possible for folks to fix their source to 'just work' everywhere"...

> But I tend to value more eternity than added diagnostics, and others may
> disagree with that, so whatever you decide is probably good, and I'll
> document it.  :)

minimizing the need for changes on the man page is also a [minor]
argument for just going with the kernel declaration :-)

plus it's demonstrably "good enough" for existing callers. it's not
like the union would make the api any less error-prone?

> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

