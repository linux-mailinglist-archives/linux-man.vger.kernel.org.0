Return-Path: <linux-man+bounces-346-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DE99D8284A8
	for <lists+linux-man@lfdr.de>; Tue,  9 Jan 2024 12:20:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E39F1F256CC
	for <lists+linux-man@lfdr.de>; Tue,  9 Jan 2024 11:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20CD436AFB;
	Tue,  9 Jan 2024 11:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KkF45ITT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7569229433
	for <linux-man@vger.kernel.org>; Tue,  9 Jan 2024 11:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a2b4aba3a8aso58668266b.3
        for <linux-man@vger.kernel.org>; Tue, 09 Jan 2024 03:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704799209; x=1705404009; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SZIA+RDPBR257L4hn6QDkLhMj7OMliJisICgPwpseFc=;
        b=KkF45ITTOYKfRk9lp7M16D6mtSroVN2hGco7frzVEZj+YKgDBb9A6zyP3x6OMJiU0d
         QsxYOkSpVsb2c7MBcvWhXHaApvocrujhpUAg/grHA3eTcFIfAAw6pJSyzL81n4Hh/hSH
         CpjgCgs59GvRk8d5zccMNG5OlMgtWliFIxOpXa2mrP80bmA0k29vlJMBUZN+AydSLyKS
         NQumugO18/165h/sGAfh71NqC/eD0q3wTlUebpe9d/3WsHNgm4c3zuYehZFhfl40GuIo
         jt+wqaTcJxcgB1QgP1eLsbKDu1Noa3WH4OFnNOm9/dTL5R4oXpXvxmJkenkOtLBHnsg/
         GSRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704799209; x=1705404009;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SZIA+RDPBR257L4hn6QDkLhMj7OMliJisICgPwpseFc=;
        b=eSOq7PansAxmyR1EN+Mfkr2O6YHUkXWRwCFA5T0Aaw65SMAzV7Y8K7Ut/WjjPCmQ+k
         Wo4rxhMGXDChu7EdBwytujysxUDfOcpfsuPXxJbO/m4pRuXrDfo0Dmf6kaR++g2J+zNj
         lWwuzRogbJyuDQJpFuiKGNoFJy/BvLV7qHnzaZgdq30CXncX6+ibVWuZu95vxPKClnhL
         AOK8Xt5ky9POLAJYzx09Ucxmaou3dKJFH3/KJXkGL5C+002dBpXsqAO1Jl/ObMzAhpuG
         J0V5GlQOGCrMZ+HFtOJutLgUPwpiX2zlnCxgp0a6LzeCvPOA0Rs6ovZUqjqf/Fdr+F+H
         DdBQ==
X-Gm-Message-State: AOJu0YxSvsu85+2FF0B6D/SMxRTzGeAOYgUo08NQ11psuy1YZF0D9jgO
	Jiy+Y1cN1BL3t2ts/HA7CtLvSKU4IoGT6oF4HHN20xAC0OOH
X-Google-Smtp-Source: AGHT+IFde5biH6oIsJrQXu+4Fmai84nA3lMwR8ZiRvu37Yn2LmdmcnhiNHcj5UBADPC3CMf0+guQDb5J6AaeaU54CHU=
X-Received: by 2002:a17:907:84d:b0:a28:7d3b:176c with SMTP id
 ww13-20020a170907084d00b00a287d3b176cmr462642ejb.49.1704799208470; Tue, 09
 Jan 2024 03:20:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231226122341.14444-1-r.pandian@gmail.com> <ZZKnGzK-6CKx2lW6@debian>
In-Reply-To: <ZZKnGzK-6CKx2lW6@debian>
From: rajesh <r.pandian@gmail.com>
Date: Tue, 9 Jan 2024 16:49:31 +0530
Message-ID: <CAKkEDkWJa+BbexSD1OGa=RhKuaETmYZUJaLJKZPvsVW9=Vr=JQ@mail.gmail.com>
Subject: Re: [PATCH] bugzilla_217709
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Alejandro,

Sorry about that. Thank you. I am off sick as I hurt my knee bad. I'll
be away for the next 10 days. If it's still here I'll fix the commit.
Just letting you know so that I don't leave you hanging there.

Rajesh

On Mon, 1 Jan 2024 at 17:20, Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi Rajesh,
>
> On Tue, Dec 26, 2023 at 05:53:41PM +0530, Rajesh Pandian wrote:
> > ---
>
> This patch is missing a commit message.  Check the CONTRIBUTING file to
> learn the format of the commit message (or inspect a few commits with
> git(1)).
>
> Have a lovely year,
> Alex
>
> >  man7/mount_namespaces.7 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
> > index 1f0a1b41f..736dd91bd 100644
> > --- a/man7/mount_namespaces.7
> > +++ b/man7/mount_namespaces.7
> > @@ -1127,7 +1127,7 @@ in the following step:
> >  .EX
> >  # \fBunshare \-\-user \-\-map\-root\-user \-\-mount \e\fP
> >                 \fBstrace \-o /tmp/log \e\fP
> > -               \fBumount /mnt/dir\fP
> > +               \fBumount /etc/shadow\fP
> >  umount: /etc/shadow: not mounted.
> >  # \fBgrep \[aq]\[ha]umount\[aq] /tmp/log\fP
> >  umount2("/etc/shadow", 0)     = \-1 EINVAL (Invalid argument)
> > --
> > 2.39.2
> >
>
> --
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

