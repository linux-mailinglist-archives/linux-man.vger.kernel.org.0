Return-Path: <linux-man+bounces-2848-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F7FAA71BB
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 14:28:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C5094A4EB0
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 12:28:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F746248F46;
	Fri,  2 May 2025 12:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hESS6CsX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87BF1210185
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 12:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746188878; cv=none; b=MxgH5z1EefM+g3KNuJrdGrO7Mp4mohBa4r0GnfI0+q/YDlL8qL+VKA2LZ6l7Ii5a33LoBmdLlC08kkaSFannKRnXRYoY1AalXAx7F2vADdn8oYT1iaIRK1XP88MFTGliYvwjjEIIwxi7HZOrBm/3FmeNloe0wcECPU0YqzPsfT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746188878; c=relaxed/simple;
	bh=Dt98/q+f5bMHfFeyEXyoKAmpvyVPf3t8bbYlZzUO86A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ahn9kILkBL2nMnXd+3TJxPZbgV6EyC6AEUZLqeEOMd5OgYK9Gus7U/dWgMIlUQQhrbfs3pait4LZpuJX1vewIX/dmA6HzRRwEkEnhWjfxT5b3kP9RpDoxvgWYVAogJGkvQW29RSDPEZGxTb3pMInD4jCDBIbvp2mWEQI4g6gVuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hESS6CsX; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5f632bada3bso6938a12.1
        for <linux-man@vger.kernel.org>; Fri, 02 May 2025 05:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746188875; x=1746793675; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KED6TVM6KhxnWvS+bAlYXam1Na+H4EKzj+x4CN+guAE=;
        b=hESS6CsXRWVyn72Ksr+tIVB+6jx4/bltq0gb3c27h7Y0zSGo5E75GTv9wWOFiuKZAS
         psL1mTQzgoE7WxltWR6T7BYFx9rymH6bfHLDiZHKSrxinqEWhZv1AMwc13y/1iBgNrUA
         h3xvj4IrgFbSoBcFUWQWL1I0x3Ey11NpWLKortph8jOByjR5r6X7+FRLuRUj7E4hdYgf
         fTmvZqR14gkIi+WQhkUj8Tx+msd/mtmqOMEYVCpZComwFbLx3Ibpre5fZc8MxuUXpX+/
         jsdu+UO/4uOlNQo/4flZpcX1sQ4jG2EYiU00CbxgLnmOlLMV0RL8o1WpnKQJMSrSeYiT
         lB0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746188875; x=1746793675;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KED6TVM6KhxnWvS+bAlYXam1Na+H4EKzj+x4CN+guAE=;
        b=vDv2DGCoKgOA/ltJjtOVXQ0VUMyxtpWTqSgqR5YYbik7kLOlag0B4Apg/fkBV7bcit
         f54rBD+nr7C1s0i0CuipwqkoUXDsEP422T4sNXkxBsQd0o63zv2JLqF6Adn0HalKoCC/
         URGphDmOKa+s1aCHH7tCaQNqQwP295UnQtx8EhAMezJFhZLFFxpWg81I0i+ksymcJ3up
         83HT+qKMyrSx2MiF7wh8qdS/VuG7e3Jc8MTVvl5YxOobVfXaxUGz17AsbWqLi/aUgmr3
         tLnXSgrJUwPfvM95NtZ+ySfki7PQqrJ2k+/lO58GxGyLDDqMGYbF52UYtdCf32QGy2/o
         46Jg==
X-Gm-Message-State: AOJu0YwK4xiAummkURQrm+q9VzU0WnZdAB6ZGOL9FEn6FKn4A/Bf2ZFJ
	pnlypgQZAfd7dlzYnOuv0+niYpvR3qDuwZSW3kac//w8xB1xfpOoEmOhQsX9nQjec1cVm8dvviA
	+IFuceAILl2qP3IfiwCQ6FVA8HwqGMZ2NCoDY
X-Gm-Gg: ASbGncv7m362H88jW6SYznPQGoNsQz5P3Rn8lKu6+O7oSkG9wbz6r2fIDyxzOiDVoBn
	mumTva+S1rxqXNIlysnKUTr5mh43JVbnolalsRxI1/8McDb1AU8auIhjt9u6eUAZGOOekLWdztQ
	MCeTYGPdJ7Z+lYfX1l2JB6Ia1vjETzbHsIKuQmesTY+sCU61wR7Vv77OOPRSWY
X-Google-Smtp-Source: AGHT+IGTVutwBhlkfvR47Zkz95WH0RV6UGYqpx4CFTVUk1SwzLQJ0cbpfA57taFIdoXJzu1hG7pleUmKhHCkrUCRMRA=
X-Received: by 2002:a50:d556:0:b0:5e6:15d3:ffe7 with SMTP id
 4fb4d7f45d1cf-5f918c2a177mr168900a12.7.1746188874342; Fri, 02 May 2025
 05:27:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250429164359.2699330-1-jannh@google.com> <dgzjcjwdldjn7uzgeh6dfwsgkc4ju2zakugwrnpyj5mwbmrnk2@sqqnganfrdvh>
In-Reply-To: <dgzjcjwdldjn7uzgeh6dfwsgkc4ju2zakugwrnpyj5mwbmrnk2@sqqnganfrdvh>
From: Jann Horn <jannh@google.com>
Date: Fri, 2 May 2025 14:27:18 +0200
X-Gm-Features: ATxdqUEcXm4IiDr4XYWSdbbI_BiNAizfd7NzC2o3ztpx8sL9j64phvDx-UHiZSw
Message-ID: <CAG48ez398ny2se1000gbta2-FVJ3-+13TQd1v4Ce19oNASqUCg@mail.gmail.com>
Subject: Re: [PATCH man v2] mmap.2: Document danger of mappings larger than PTRDIFF_MAX
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org, Jakub Wilk <jwilk@jwilk.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 1, 2025 at 6:43=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
> On Tue, Apr 29, 2025 at 06:43:59PM +0200, Jann Horn wrote:
> > References:
> >  - C99 draft: https://www.open-std.org/jtc1/sc22/wg14/www/docs/n1124.pd=
f
> >    section "6.5.6 Additive operators", paragraph 9
> >  - object size restriction in GCC:
> >    https://gcc.gnu.org/legacy-ml/gcc/2011-08/msg00221.html
> >  - glibc malloc restricts object size to <=3DPTRDIFF_MAX in
> >    checked_request2size() since glibc v2.30 (released in 2019, as point=
ed
> >    out by Jakub Wilk):
> >    https://sourceware.org/cgit/glibc/commit/?id=3D9bf8e29ca136094f
>
> Thanks!  I've applied the patch.  See some comments below.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D7e5756fdeba1a4729f817079c64f0d87fdcdadfa>

Thanks!

> > +Unlike typical
> > +.BR malloc (3)
> > +implementations,
> > +.BR mmap ()
> > +does not prevent creating objects larger than
> > +.BR PTRDIFF_MAX .
> > +Objects that are larger than
> > +.B PTRDIFF_MAX
> > +only work in limited ways in standard C
>
> I've removed 'standard', since in any C it is problematic.
>
> Is it okay to you?  (We're still in time to amend if you prefer
> something else.)

Sounds good to me.

