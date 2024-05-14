Return-Path: <linux-man+bounces-911-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 070758C5B4D
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 20:44:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF3522835AE
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 18:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0920B180A85;
	Tue, 14 May 2024 18:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fyrggNt+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE09180A7E
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 18:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715712268; cv=none; b=Lb+P4SbyinZ7NYqkVbYYjfu0sDPEF2lu7tXcdURY+Bq8a2ZQfrJOaECUusEgGbxTa5XmmCbirQxTmYGbW61LBJgEy+9d52jjn4Fgko1b2Y6axjOaMkNcjYGDw7QbA0x5InvFaC0wNrO5TAZiWEXhprsGC7BvH6gD71Qgb3VaxrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715712268; c=relaxed/simple;
	bh=vnUaFwrYs9FhCQxw89hBVzdQngO0GQzOirSjHgvRkRU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QtM+HmcchWrKTCKtpfbeWd44wEjIIwHVl2zosIVwGbMHr+uLZ8L5b9BwbRNMj3iqXe6HBvHobDcEMJzSs90qzxi5z3m1gLe+D5r6wn2xBpGwb9YEAdzrhsJH5WWl9SswZBiU6nrb2YF5/F/oiWEi7iZEodPg9pwvXYClBt8VCZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fyrggNt+; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5708d8beec6so621740a12.0
        for <linux-man@vger.kernel.org>; Tue, 14 May 2024 11:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715712266; x=1716317066; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iG+p3yfByiLtypMcy1nQPO8AFIFp3kdEEj1oEMy4UBA=;
        b=fyrggNt+3pxZ1GqALgiMEV+5Ng5z0nLHu8mSZ0cxxZR9BaaTGJNtL6235g+Y3EXgHr
         6PyJtEG0ulsJrWAScNH4Qht7Xi73l95c0Ux5SM5Axl/xW2QSVcdeulVvffWkMynXQ/JC
         5zCuxetJf5vVRciwCD4Z6rbKgk8gXPWVOzMaPrfu7HSPZCeTRqA7nHbUEQ7qRSWtebuZ
         6ScXAR4NE9CjHghbD/8Wni2OwJuCXKny3UDidfZajkhMrVhau8B8r746hYMdmyGup9cC
         s85rkGdu1lvxG0KDiUfFXhsHyi+xPf5/HqJSxuCB4s2xDozowwy81d2O0EE1FNQj3KBk
         FCmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715712266; x=1716317066;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iG+p3yfByiLtypMcy1nQPO8AFIFp3kdEEj1oEMy4UBA=;
        b=ip+DivhAq39y8++NK3i1XL2+pG8UbuHcv+xY9nBv2JzXD1jlcNYHG8JkLWicJIJ7BD
         XEKvElqs0shaosusZ3MUQeYke0IwKRC1jsKR0herr+ueD6U77HZvXlI9F+N1o2SRO+P+
         3QkBHSkTB0Oo11Izemc5OeAE3UafK1DNAU7clbvrIJkLH/EBlvJSLNYowcz1BStI960m
         lm/IT1nvNJJUk1Gxjml9ZndE+mx5Y8szH5FbLltbitQ1czIwqTAvOGr5znNugePTjSjH
         8B1V0bCZ0wEuQnf1X2aUB1vNYmGTjgFJTpx9JhdCv1b2R+ZQkv4egOvB8K7I2f3mcdN2
         SX5g==
X-Gm-Message-State: AOJu0YwgTqbXlifdcIEunZVC1ymov3UsgIDaBt4Qa/xIVQHFTqptV4Dh
	T2a9JEZdRUofnS9wMxwUkY6EyeUDUMUYWjBOs/w5EcjJgVGVvc3O9/BcKiNEP98wM+Mnb+IWrPk
	rHsuTsFSQL3ZDwiqcZOApI2gB3PQ=
X-Google-Smtp-Source: AGHT+IH9O27XEbYeUkn/he4+6gSmDVCmCl4thfoRjLabnZA53dPLDfevpd8MfRy05co+dixkdk0SDPkFYkhSIBI1Fbw=
X-Received: by 2002:a50:9e61:0:b0:56e:23e3:bdc2 with SMTP id
 4fb4d7f45d1cf-5734d5cf9b4mr13092702a12.13.1715712265559; Tue, 14 May 2024
 11:44:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240514175449.68721-1-technoboy85@gmail.com> <jp6oa3ge3qs2kl77kg4p5ns6u6yob5qyomhbdbqcoti55cj3je@tieeceztop3b>
In-Reply-To: <jp6oa3ge3qs2kl77kg4p5ns6u6yob5qyomhbdbqcoti55cj3je@tieeceztop3b>
From: Matteo Croce <technoboy85@gmail.com>
Date: Tue, 14 May 2024 20:43:49 +0200
Message-ID: <CAFnufp0rx-OyfpYmTDGCXHDmB6XSYE_hbF-1s9WCd3UtLw0nUw@mail.gmail.com>
Subject: Re: [PATCH] proc.5: document 'subset' mount option.
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Content-Type: text/plain; charset="UTF-8"

Il giorno mar 14 mag 2024 alle ore 20:08 Alejandro Colomar
<alx@kernel.org> ha scritto:
>
>
> What is the accepted format?  A CSV of pid numbers?
>
> Have a lovely day!
> Alex
>

Hi Alejandro,
It can only accept the literal "pid" string:

# mount -t proc proc_pid pid -o subset=pid
# mount |grep -w proc_pid
proc_pid on /tmp/proc/pid type proc (rw,relatime,subset=pid)

# ll -d pid/{1,$$,cmdline,version}
ls: cannot access 'pid/cmdline': No such file or directory
ls: cannot access 'pid/version': No such file or directory
dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/1
dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/25146

Regards,
-- 
Matteo Croce

perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay

