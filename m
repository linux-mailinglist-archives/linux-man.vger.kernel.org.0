Return-Path: <linux-man+bounces-1157-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 61531905A25
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 19:47:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1486C1F241F8
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 17:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC131180A93;
	Wed, 12 Jun 2024 17:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="mOEGFuFE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5DCFBF3
	for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 17:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718214437; cv=none; b=jrdXfoIJjEr8pycztrmVlbPhKc0rDwUlgKtJJ/2CP/ljbsXzStpMVu6rAK6Dn/SwQrzXxHT3s24UrQUzhceR0Qu58cge8jwxTxB5qDIpCPeoj58eWEdw4215YJIOUCgeF8PlYagebcz2Mx8x/pjhkc/eXNXqLujDU1h1hqW7HmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718214437; c=relaxed/simple;
	bh=yQaCFIOSreG4dB3HESrGO2r8ZFtVH9AGcf4g3223SlU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GXmgbFx+Txr7END74/XKI9n2Z/x0vFg19J3hVsdFdLSO8DmvrHl6B0wgxF+XFSLLXr1eYag29p0yn6+WAxk7v+XSagWvAFW9jVeRN8nQurrJa5Tps6DmHxQ0bVep6Isfc/HitSuSYxtBErcSUwBtzGywAoSfjppwl+euB9wpBUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=mOEGFuFE; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dfef7b13c98so168268276.0
        for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 10:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718214435; x=1718819235; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U9K/YgRhZtFx7uthgN6OITo7kLPMlwArLIjPMt98hbo=;
        b=mOEGFuFEY9XB1AVEOa6Uw9qQBlg67OcjvVWlt3XMJRKH9/VEZznu2pkUa++bw22HmX
         TAsDAOmW08sN758NzWLXshu9EujZ6WiT66MtsTxVuiPkKuGaoepDBNTw+1z8Md4YyPN+
         6COZCrLTCSENtfx9uVhgCmELdRd3pFWrYoGT0MBPrkjPFVlhp+hO/ab4GET21VpfGKem
         jlPo0tGv9ViK/Gw+bAVS8YkpT3RhALabdJ1zXNX2PikEeJRDYQarIkQV57CF5qIysiFv
         3/njB5WuvRmQJjeTLsT6bORrSiH2o6jxpHfqU3u5hbJMjobBbhXwPxBrCf/4SiY7o9DF
         HsNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718214435; x=1718819235;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U9K/YgRhZtFx7uthgN6OITo7kLPMlwArLIjPMt98hbo=;
        b=L0153accGeT2Eg72kdej4+V/ZnbGzZUrWyx0td8bQDoLC9CDd4ycz9igT53clruQKx
         YBaQoMBgKziU40v3FYEeZkXR3yJEKgDlnridpMyoLghqhSbH5lDjB7hPJRI88KINTyWP
         wqocGkj80nI2u2ZVUGx7eEen2BxCM9Sk3OkrVISguMzq4/0myPXIeIH/J8Q28dcBavoi
         1/8Uc9OR0+M26J8GjOeD2egOxYA3ZocKmeovsN/mcNs9NZXYn8lyL05nL6eSYolL9ek2
         MbA1mJWuH5uiyzQcYyHRiJ8+PipCQ1hD9CZUe1p22ddZ2X5CB06a+97b7gGsuUPJsxJ4
         h/Hg==
X-Forwarded-Encrypted: i=1; AJvYcCWnPK7grMrgYlUJUOh9T1pMsDBs+R4ev4yra1v/dVjWssD3HDBdi+qU13IJ3JB/+zd1YiaQrHXm9RDUn5EkVww277TzKW7m/YVb
X-Gm-Message-State: AOJu0YzyY2D8twBBqJYVw+G4+0TsMUgkYIO/ZzPXWAafh+wnAW/hUqXI
	z3B7JJX4OZ+4Zsip+URETjn3yNlEfa88/C/jyq4b1MkOpJLPlii9r+RU2Jlg37DNiTcixHZF7xz
	ZqGjIGCvHBXXFKi70RkusC6OJtMf6cyXYv/xm
X-Google-Smtp-Source: AGHT+IG/ICa75l9zohCG4/2lItGuALPXT0N9Ucn9xhcsPivipbrVZ9ARL2AfAdTNET6da3WCkbrVegcDfHhFQDbE2yA=
X-Received: by 2002:a25:3044:0:b0:dfb:85a:5e23 with SMTP id
 3f1490d57ef6-dfe6852dde0mr2104434276.44.1718214434980; Wed, 12 Jun 2024
 10:47:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <a7kfppfptkzvqys6cblwjudlpoghsycjglw57hxe2ywvruzkbd@e6nqpnxgwfnq>
 <87af5e8f-0dcb-44a0-94de-757cad7d5ded@cs.ucla.edu> <mdidkojqnhvf5b22vh3c4b6ajmq5miuyr3ole26kx2qkmnbfh3@woy2ghe5eyve>
In-Reply-To: <mdidkojqnhvf5b22vh3c4b6ajmq5miuyr3ole26kx2qkmnbfh3@woy2ghe5eyve>
From: enh <enh@google.com>
Date: Wed, 12 Jun 2024 13:47:03 -0400
Message-ID: <CAJgzZorNc3gNVbiibz+DibrMLxc2dQoOS5NtL+RQUkSD-GMYaA@mail.gmail.com>
Subject: Re: termios constants should be unsigned
To: Alejandro Colomar <alx@kernel.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, Andrew Morton <akpm@linux-foundation.org>, 
	Palmer Dabbelt <palmer@rivosinc.com>, linux-api@vger.kernel.org, libc-alpha@sourceware.org, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2024 at 12:29=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Paul,
>
> On Wed, Jun 12, 2024 at 07:55:14AM GMT, Paul Eggert wrote:
> > On 2024-06-12 05:16, Alejandro Colomar wrote:
> > > tcgets.c:53:24:
> > >   error: implicit conversion changes signedness: 'int' to 'tcflag_t' =
(aka
> > >   'unsigned int') [clang-diagnostic-sign-conversion,-warnings-as-erro=
rs]
> >
> > This is a bug in Clang not glibc, and if you're worried about it I sugg=
est
> > sending a bug report to the Clang folks about the false positive.
> >
> > Even GCC's -Wsign-conversion, which is at least smart enough to not war=
n
> > about benign conversions like that, is too often so chatty that it's be=
st
> > avoided.
> >
> > A lot of this stuff is pedanticism that dates back to the bad old days =
when
> > the C standard allowed ones' complement and signed magnitude representa=
tions
> > of signed integers. Although it can be amusing to worry about that
> > possibility (I know I've done it) it's never been a practical worry, an=
d
> > even the motivation of pedanticism is going away now that C23 requires =
two's
> > complement.
>
> I know; I think I have -Weverything enabled in that run, which is known
> for its pedanticity.  I usually disable it when it triggers a warning,
> since they are usually nonsense.  But in this case, adding U is a net
> improvement, without downsides (or I can't see them).

well, any change like this is a potential source incompatibility ... i
hacked these changes into AOSP, and it did break one bit of existing
code that was already working around the sign differences --- this
warning was enabled but the code had a cast to make the _other_ side
of the comparison signed (rather than make this side of the comparison
unsigned).

Android's libc [bionic] uses the uapi headers directly, so we would be
affected, but to be clear --- i'm fine with this if the consensus is
to go this way.

(but, yeah, i'm with the "how about we fix the language and compiler
rather than all the extant code?" sentiment from Paul Eggert.)

> So, while the kernel and glibc are just fine with this implicit
> conversion, they would be equally fine and even better without the
> conversion.  Not a bug, but rather a slight improvement.
>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

