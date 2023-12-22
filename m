Return-Path: <linux-man+bounces-288-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC3C81CBFB
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 16:14:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E37891F27B4B
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 15:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 149182421C;
	Fri, 22 Dec 2023 15:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HsqGxG8o"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9D624B20
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 15:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a268836254aso234263766b.1
        for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 07:10:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703257811; x=1703862611; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bXKLUDPg23Ihqi1eDJU7EFX3pdrE3Plpy7nJa6jMP7M=;
        b=HsqGxG8owgOaC8mPoRDtfELSLCvOim/jMpjh/SSXQEyFUtr9XbC0X3lRYGE6LR5bbo
         7PZtAADAQYzZ65bTRCxd69YQGKhNtSO0Q9wNI/TMlyy89Rr6i1EAgc8bw5t/me1evYmw
         kJIb7QMfnU0o+lUihekL9Y6IM3hTZ0W4ASXR+Q5Qoy4ULnlUlvu9eV3DHzEhuLJhqckk
         Co/5L4uGYGyIAYlTDQKxIbwRW6fMg5CXicRLoZ33MvQ2pmiKcR5VceINbx1wFaEvcC/b
         5CQSHahoW4Bn9gZvwFC6nX7K6Gud6KXZf+G7p51/NXf1e/LDj70qyVveQ4ecBTolq5ie
         Leyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703257811; x=1703862611;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bXKLUDPg23Ihqi1eDJU7EFX3pdrE3Plpy7nJa6jMP7M=;
        b=krAuLlSwBrsubAheTMFFpz8s1VNv3wxqaHjzcOLXb3g2qJ0B5nrX2yAasFfZppGI+z
         EqL95bsxUIG42LzmBF63qAeX8KNFrrBsH4DXkMWmA7eas4D0fwPjXmu8uTW6/O8z1N5U
         qKIAodX2Lgc51+rxFeBU4VtiRpe5/fDALZYW2HDUSgCkgUGAc71OubbK82EvlfMyKrgW
         /kx78L4ChLLWJSgT70dq7qiBkLXyXt769YDZm6YyhkXFQolrN7c711sbMNOtOfoYZaEt
         QwlF5xxS+XUlI2KJ9c6Q6yYYCEQ9ipbDSpoxt8KVS0Huty+w60c49O7AQ8wNepj9ZiCA
         u/OQ==
X-Gm-Message-State: AOJu0Yy7RrenwM5T5HUVO3AyWKvr9kRfkBceRXFHUcOfMu3B8jf02E81
	Nm2TyOw7imc0sgINpPhQ71v1EwgdyVASTHNGuYkV4NqopW2p
X-Google-Smtp-Source: AGHT+IHwftOctVRJZPkiBQf3X9h0Xk0DuhVzopYcuuEqTxTueHPxCpQB5o0LpusH0cX4tiAZgcNzlc6mJGPAiNDKNYo=
X-Received: by 2002:a17:906:3797:b0:a26:8e8b:2073 with SMTP id
 n23-20020a170906379700b00a268e8b2073mr969451ejc.66.1703257811302; Fri, 22 Dec
 2023 07:10:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAKkEDkWv_wksbcAkUEaFdAQhkhZH1xr+pLidXAvKvV-ka7gE1Q@mail.gmail.com>
 <CAKkEDkU28SRY-dZOVdnGORV2f8ovOak1b=Pr8+bEFDb-B2vx+A@mail.gmail.com>
 <ZYVpRMcZk2MSg9Yc@debian> <CAKkEDkX_kw=5rwn5qcbt45RjWMtSuVNAzYDc2MEkaTr0FwQe3w@mail.gmail.com>
 <ZYWbJXjbQDm-2V8H@debian>
In-Reply-To: <ZYWbJXjbQDm-2V8H@debian>
From: rajesh <r.pandian@gmail.com>
Date: Fri, 22 Dec 2023 20:38:43 +0530
Message-ID: <CAKkEDkXFZCmtx3MO807OH2YZ7tMB18okx8L54-giREdfcjqdpw@mail.gmail.com>
Subject: Re: Contributing to documentation
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

That code is useful for debugging with something short, but normally you
shouldn't call printf(3) from a signal handler.

Yes, it makes sense. I agree about no printfs in signal handler. But
this is a demo to prove that SIGTERM is called and put an entry to
prove the point.

Also so we leave this as a comment and no need to update shutdown man
pages then?
Sorry to bug just trying to understand the process more : )

On Fri, 22 Dec 2023 at 19:50, Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi rajesh,
>
> On Fri, Dec 22, 2023 at 07:40:19PM +0530, rajesh wrote:
> > Thanks, I'll check them out Alejandro. Yes I m ok with git (but
> > looking forward to learn more)
>
> Ok.
>
> > I also made a comment on https://bugzilla.kernel.org/show_bug.cgi?id=218266
> >
> > Does my comment looks ok? The language,
>
> Yes, the language looks good.
>
> > code etc,.? If it's ok then
> > putting this code in shutdown makes sense?
>
> That code is useful for debugging with something short, but normally you
> shouldn't call printf(3) from a signal handler.
> <https://stackoverflow.com/questions/16891019/how-to-avoid-using-printf-in-a-signal-handler>
>
> I can't give any other response without actually investigating myself,
> since I don't use signal handlers often.
>
> Have a lovely day,
> Alex
>
> --
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

