Return-Path: <linux-man+bounces-3251-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DA2B00817
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 18:07:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C30E9162198
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 16:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED86B2857FF;
	Thu, 10 Jul 2025 16:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ah4KTt8M"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4630D198E9B;
	Thu, 10 Jul 2025 16:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752163414; cv=none; b=TJYB3KbijZ8vp9XTv7pwlo2PaAenVc+c7RNuCJSFZe++Rc0mEM97DMWd3zyIahC0Bc8cFFYeKcaSy85j0WYskdSbmiClDdJNXZE9OZT+gBxpyGy/PzOLzn0bNMBykX5qwZevNI+baIksecq6HT7Q6V/tJaNXlZhv25FzvoffM+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752163414; c=relaxed/simple;
	bh=OrcGscQIecHgEJe2ZrYi9mg25D9dSHmjzwyP98IEYCQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=onM/13zjlvYtAFFfnM0H2A4dbUYmO1patpfEG4RkNbt0NIBFbyYbnB8yXqClnqnl++d/N/ZDkh1oKjGM0gsyIXRFp2lu3nG3+xCWzKiYG+WmMpVYDyK6ucoIxhp8CREqOlDClcG+nSiiQmvArKWcUP3KI+4D7xfISDzHL+Qx7mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ah4KTt8M; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6fadd3ad18eso10599736d6.2;
        Thu, 10 Jul 2025 09:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752163412; x=1752768212; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6CNBdR675+4dtocjN9Sp335vjQ1icRoCsxmzij+vhoU=;
        b=ah4KTt8MhQ6shi27tlVMbd947OaGcdu/4tgwQ/s4MvDfBYRokwVInoFHNNScvNe/xg
         qGpIGjI5LOLbqJxzu8Fw6ooW8MYubjL5fXwm5Ysz1Y6bPVUyQkAFWWRm/zMDk+Ia6ui5
         00mbvX6QKj12Kgx9XmwpGraV5AvFdr14LmwzY9erJGMlEnsTlj5J5V9pDu7u+cPshA78
         SqdJy3HVbHUrJm7WLXct/yLhK/kbA1x0UPOj8ECLApU6JOP8gIaB2kYLR0+ClD3GU0RL
         Yd5RhNzBAzqYL6O4J6xJ+3HMIBS70x0cpX7a+8MNAIEDfe0W2jE3YUYcsndVInr03bmO
         LvFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163412; x=1752768212;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6CNBdR675+4dtocjN9Sp335vjQ1icRoCsxmzij+vhoU=;
        b=hDmoGJrLNcPBXSUsxJ/e00CiMvbqHbJzkHM56TO3l0CnLIigXrIbUvXHATV1kGBDbM
         4EgpkSLxH2S7O55qsENzJoljtvYLYuHYQ91PQO3b2Cf3jIRQM8eMRzwYrJpoDvaHcSb+
         cIfSRhckwMXpoaoeWrqnUVMJCMY6JUNSJJTVEUea/XO2OI/+iEmdBLNvNtc1F90kRm20
         g3oc4UPwGujAuaxO9BLdFAxnn0MRVsvtaxwQRZTZie4zvRHnZQiNU6o5/07oangi5YF2
         DKn8YBgFceV8y62iH7ROTE/xRpYe3EBB9vM5MMCyfBJQ3wpJvOdXaccnkqoMfgEDen6h
         H6ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2CPmKQk2YnHAweGJ57bCtNpNxQzy59pjWS+d7zlayqJS0TjAo9NDghM0i9r+p/7XO3oFVPh1xZSC3@vger.kernel.org, AJvYcCXUT0QQbD8B749Um8SeO7AwQnSAcgEx8c6bbWESHxzdZsnoWvMnkZnFzyBMypwjugXnex8GwQ84oDZ7@vger.kernel.org
X-Gm-Message-State: AOJu0YyvMFnjanhwtGlJEvyrdC+jaPQY1UpKn07eNDhsxBsPh7XqGbQj
	pRbtwZTro2jWm+t51Ud6S+twCNwFdjD1tAJ1CmfH9vyjMCpRUDjvBXY0h5++O2IBfyB6VqKg69Y
	1Vrj9LHrGdBgEUkEbJIAuLLVZa86k7HNdVKk2CzU=
X-Gm-Gg: ASbGncujjLaG+5CU3cS36j7zdquyIl4yLmdbK8tZwwwgcQVbsZmXOyDPT1JHR16yf6L
	Xybwb2TOel5R1Gkew9R5/ZAE9QiBlunxem1/QOaS2aNRj8XzN5DjEetQfTGSUIPBTss0aWBeV5F
	YN4g4WgPGK0NvFJai/hnA8Jf51Ikmj2ktNhWmauK3g8RTINgocMDVIJLBmVUDC6/6eFweQFaylq
	PQDLFKOzSQEPA==
X-Google-Smtp-Source: AGHT+IHmYyL/+JY0UvfI9kp7qwQUTaGrCKnbBVkp09rDCjBz15CFnxSjwkozDg0w23mTJIpWlD9q+WSW/LJjtpA/lt8=
X-Received: by 2002:a05:6214:5249:b0:702:d836:6591 with SMTP id
 6a1803df08f44-7048b904e66mr149906986d6.32.1752163412037; Thu, 10 Jul 2025
 09:03:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAH2r5mtwv16LtkbXywgA=LMe71=jY64j6qUr38nqV=mKgOUTgg@mail.gmail.com>
 <d37b4e97-bac7-44c0-901b-e7b686c985b2@redhat.com>
In-Reply-To: <d37b4e97-bac7-44c0-901b-e7b686c985b2@redhat.com>
From: Steve French <smfrench@gmail.com>
Date: Thu, 10 Jul 2025 11:03:19 -0500
X-Gm-Features: Ac12FXxi2Nv0vGNpVwD3koha8236u-STNofMmzFu8_Jyl4dlM9T4OoXuK_kE7KA
Message-ID: <CAH2r5mukt1NVVo+qT=cpeB-bmSh_vRgqhkGhF8g1E4+R8W5vHQ@mail.gmail.com>
Subject: Re: Missing man pages
To: "Carlos O'Donell" <carlos@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, CIFS <linux-cifs@vger.kernel.org>, 
	linux-man <linux-man@vger.kernel.org>, Bharath SM <bharathsm.hsk@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 10, 2025 at 10:55=E2=80=AFAM Carlos O'Donell <carlos@redhat.com=
> wrote:
>
> On 7/10/25 11:07 AM, Steve French wrote:
> > How can we get missing man page (mount.cifs) added to man7.org?
> >
> > https://git.samba.org/?p=3Dcifs-utils.git;a=3Dblob;f=3Dmount.cifs.rst;h=
=3Dd4890706a0fed73f05b3a228971756b57efcb9ba;hb=3Drefs/heads/master
> >
> > I noticed today that mount.cifs man page is missing from your site
> > (and presumably the user space tools man pages are also missing
> > cifscreds.rst   cifs.upcall.rst  idmapwb.rst     pam_cifscreds.rst
> > smb2-quota.rst cifs.idmap.rst  getcifsacl.rst  setcifsacl.rst
> > smbinfo.rst)
>
> Since Michael started adding a curated set of man pages to man7.org
> from other projects in 2013... how are those sources kept up to date?
>
> Is man7.org a part of the Linux Man Pages project or just Michael's
> own published collection of man pages?

That is a good question.   Google search for Linux man pages (ie
"where is a web site with latest linux man pages") pulled up an AI
generated answer that indicated that man7.org is where to get web
pages with current man pages for Linux, but I would be curious if
better site.  The other ones I found were even more out of date.

"The Linux man-pages project website, hosted at man7.org, is the most
up-to-date source for Linux man pages online. It offers HTML
renderings of the man pages from the project and a curated collection
from various other free software projects."

--=20
Thanks,

Steve

