Return-Path: <linux-man+bounces-1592-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A8F94B9AA
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 11:28:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A500A1C21845
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 09:28:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E8D51474CE;
	Thu,  8 Aug 2024 09:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="rJMew0Ka"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f73.google.com (mail-ej1-f73.google.com [209.85.218.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CC10146D55
	for <linux-man@vger.kernel.org>; Thu,  8 Aug 2024 09:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723109334; cv=none; b=VVv607sq/+cycK0ttSEy3JuXlLR3SI00buV1saRH+JSVW8MsfU8qliXZ+SlLwdLv/QzOygj75EvVbgsUSFHla6ad3f+fxW4FqQTr+od1lA5GSNKaMDhp9OnjPtyuQamkB31UeF5MaKHllJL9cBmSvyB8QXAuEWzypcllVqprEaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723109334; c=relaxed/simple;
	bh=6pVTZVnQ/FgFq+rc1IjWgKmPBOJHksH8JIxbvqVyZ5g=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=QtiknfYxDNKWRUDc3kB+7wGbQD08hFJ2FSoqrgu0CYLbVL/VWI7ko+VIg2V0/SP8liqLlcbQgcT/w4kNmg4lqM0THIQx3K/vgkvbiNvdjsBYk4yQqhpdYf2pVFN/du6/NZQfuYJjlHiSCJwjKQYGCPyzh7ewdBTf1LFq+C7KoAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=rJMew0Ka; arc=none smtp.client-ip=209.85.218.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ej1-f73.google.com with SMTP id a640c23a62f3a-a7d6a72ad99so62983766b.2
        for <linux-man@vger.kernel.org>; Thu, 08 Aug 2024 02:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1723109331; x=1723714131; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZP7+xrj+w4O8M+i4UGfg6SgaWupsCPTQihfug43xeDU=;
        b=rJMew0Ka45zUfx06AMkSI/SK7QB4mTLfywropYIrNsTgc5/+/cgk8c8qkZ2kLTKwhA
         7QVXZcjKCnBOeGjTDXVCgAnYkEHnHMTi1N65UCZs8pAzq3+IS4qymC7jebGS9ymeaFO5
         J3Ikjfuy2wq5PTaoVZCBWyTNxYW9wdoSEKRiOPRsUCkMT50dDObJkZJzEMysrfYFntnT
         357LUvEKuCfAUyvroZN9dlFDRz8mirY7ebMpATG0ufJoql29u+ehQZb/V21Tzz2MiTsU
         /pIT292FItUXQomldpKRpGy2fzGGCNL4BYA3FnTqnnmXfASkRqn4bl+s7L04bh3R2U/u
         WS3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723109331; x=1723714131;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZP7+xrj+w4O8M+i4UGfg6SgaWupsCPTQihfug43xeDU=;
        b=LPlL6jG3zOE0CBmCes+usoHcM2x+BBvlUq40L0V7WDYOsBpFOBFNATgppQJTm4SEJE
         1BHUy3hpQJhGPm3DoiIRasP1q77XxIfz2AHFpLWqcrCpA8ly7AZoCTJp9oSW9N/SIs66
         jXAirkICve7GXWspdP7Ml/2PV5ga9CRaeZFija5H03EmrLnaefZnTttj90rScLV9Ilnj
         0XWQaMfgBXzGewR8JidQtOoaDBAva3VHv4GRJ9PP7mEi0e2I/5SgiixTFtbRF0b6Ic9i
         Qb2ZDQ2RLcfufhwM/0v48jNd6FArKUDqLK5pi0GgLlGfCqh22NvmjqG58toyTpPhp6O6
         1Abg==
X-Forwarded-Encrypted: i=1; AJvYcCU8pQVQNOUs5NuRD8Wq1xCAl/AT87zja+sJan6kB3UpViZunDuScs41XtPdjFoMkZKNT5DY07SdgyPtR9JuR70qZm+qJSOuoVup
X-Gm-Message-State: AOJu0YwzSuWdglHyPp8Auk9kQAfDIyCF+qCHBBWMyvX+M7T4BCwug7pm
	Xq7eY0rcCpc40/XgkH+lBcSskS1OqQ6vYsD/mPoz4If9ZRj+oWbaRt+BahIBOSw43fz8CUFK3b6
	bvA==
X-Google-Smtp-Source: AGHT+IHEBVo8ymUhKpar2wWlQwb8Hv6osJ8Rytyy+JerAv2233NQ2XDOGoGLu/NTwy2bCIzvGA9dYmhgzpM=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a17:906:1d16:b0:a7a:c130:8207 with SMTP id
 a640c23a62f3a-a8090e41d76mr171666b.8.1723109330793; Thu, 08 Aug 2024 02:28:50
 -0700 (PDT)
Date: Thu, 8 Aug 2024 11:28:48 +0200
In-Reply-To: <b684e2c4-ccb5-4402-ad2d-0eb99db1b57b@huawei.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240723101917.90918-1-gnoack@google.com> <20240723101917.90918-2-gnoack@google.com>
 <7558cd6d-199d-608e-ee18-293036461526@huawei.com> <rvzol7iujgcb22fd6wcfohtjkpnpdsjyzlxx7uecdhw5od4t7a@dtzcxfwonjyq>
 <b684e2c4-ccb5-4402-ad2d-0eb99db1b57b@huawei.com>
Message-ID: <ZrSP0NU2MQz0kCGl@google.com>
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
Cc: Alejandro Colomar <alx@kernel.org>, "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, linux-man@vger.kernel.org, 
	Artem Kuzin <artem.kuzin@huawei.com>, yusongping <yusongping@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Konstantin!

On Tue, Aug 06, 2024 at 01:34:01PM +0300, Konstantin Meskhidze (A) wrote:
> 8/6/2024 1:19 PM, Alejandro Colomar =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > On Tue, Aug 06, 2024 at 11:38:57AM GMT, Konstantin Meskhidze (A) wrote:
> > > 7/23/2024 1:19 PM, G=C3=BCnther Noack =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > > Landlock ABI 4 restricts bind(2) and connect(2) on TCP port numbers=
.
> > > > > The intent is to bring the man pages mostly in line with the
> > > kernel
> > > > documentation again.  I intentionally did not add networking suppor=
t to the
> > > > usage example in landlock.7 - I feel that in the long run, we would=
 be better
> > > > advised to maintain longer example code in the kernel samples.
> > > > > Closes: <https://github.com/landlock-lsm/linux/issues/32>
> > > > Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
> > > > Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> > > > Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>

> > > > @@ -439,9 +455,10 @@ and only use the available subset of access ri=
ghts:
> > > >    * numbers hardcoded to keep the example short.
> > > >    */
> > > >   __u64 landlock_fs_access_rights[] =3D {
> > > > -    (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) \- 1,  /* v1               =
  */
> > > > -    (LANDLOCK_ACCESS_FS_REFER    << 1) \- 1,  /* v2: add "refer"  =
  */
> > > > -    (LANDLOCK_ACCESS_FS_TRUNCATE << 1) \- 1,  /* v3: add "truncate=
" */
> > > > +    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1              =
    */
> > > > +    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer" =
    */
> > > > +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncat=
e"  */
> > > > +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support =
    */   Double "LANDLOCK_ACCESS_FS_TRUNCATE  << 1", I think its a mistype =
here.
> Double "LANDLOCK_ACCESS_FS_TRUNCATE  << 1", I think its a mistype here or
> its ok??

No, this is intentionally the same as on the previous line.

This table is part of the example code in the landlock(7) man page.  As I
mentioned in the commit message, the example code is (intentionally) still =
only
using Landlock's file system features, not the network access rights.

The table lists the file system(!) access rights which are available at
different Landlock ABI versions, but those did not change between v3 and v4=
.

=E2=80=94G=C3=BCnther

