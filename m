Return-Path: <linux-man+bounces-2253-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB4CA14904
	for <lists+linux-man@lfdr.de>; Fri, 17 Jan 2025 06:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86F6C1883385
	for <lists+linux-man@lfdr.de>; Fri, 17 Jan 2025 05:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37CEC1F5613;
	Fri, 17 Jan 2025 05:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J30WdUol"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BDE825A643
	for <linux-man@vger.kernel.org>; Fri, 17 Jan 2025 05:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737090027; cv=none; b=u+0COh4Y+4lHgwi58mWH/fd+hT8FWNWb5EJCHb7+RXeWWFHQwPPzzqMOrAGRGk3Nh1us8/zPdGhiTzBnDUyi5WaWPHndJZUyz3vBi4f1dtwIpjovH7W2om8T24D20qH54x3K3Y6Q5BfviLzrqfUfwrrUeDXaBxb87i3QznDqh9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737090027; c=relaxed/simple;
	bh=jegf11PZwhrVrNhmCCsZpW+y6s2YZ0Ed7NmdDJG0djI=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=Xl27t3KqeWhSvzhJI+nCb3V7wzBPbr87RXiKK4NOreZWfPgA5Uksb2Ln1MBgafulhlVHNXXQH2/anmoa4tN6raMv6cDjuaA2duugTJV45R7XC3IEfUwpKiwPd5YTBLOPRndEJJW6KmHLQ2GAyy3mvqvyD9LKKfTDxJ8cIDMJG/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J30WdUol; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5f304ac59b9so848575eaf.0
        for <linux-man@vger.kernel.org>; Thu, 16 Jan 2025 21:00:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737090024; x=1737694824; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uOZsUbaWrzChsBjaZ6eovmVbDD51mQy5dM+auFkaOss=;
        b=J30WdUolhunnWNPceVzqSlQeKyJMI7AAGnbAMPms7atBkXOejeXw+xocfLpp/lhd3d
         xCbfYFYpAgmVVKBxIloWJCh+ozSbGAKv1sirrxfZ1689xVpfo3cxxJtBpGybc0pWGQe2
         E3iIT7XcMOwQBsdtl69dU9sfl63mIhCIKJLPaqQPw+vs8cEwyq39Npt2umEqwraEVTbM
         ck3jqoePDXMjJau1qaKkmlNAwpGTQL0rKjt3RvE2ipinn04eqatrEQ6LXgLTnMMtbMYa
         Gim3lxE2mwRv9i18xhb73vIkTvGczXxvPctNvkm37CHBlfzonsK5M9YKqueNTe5vD5KO
         TYow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737090024; x=1737694824;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uOZsUbaWrzChsBjaZ6eovmVbDD51mQy5dM+auFkaOss=;
        b=qjRGarSH00MOv1/jTWB1YfAE4gteaJOS9RgmehVCiWEMsPWNaWAhCom1ciDFJcDWPy
         k+pOrgTfU388Gg4xSuQaWA3rm9AliQTVZXr0+UgX3b/WCNOL7eFyUe3ZXD1Ur1i2SBgj
         uxEG0OOlrgSlzJfGN6gXeqrexh4zNEi5lSGMS4vvvyYlExIc1TeuyKQBVARzwa1UWk80
         ZSvgPeDTkjCxJ2iFyQfykMLreKc8ORyVVKEMx7rPd69tpP8C1vL5cCE75S8+LnUKw7Wg
         P4yt36jt3oj11H3ulhqP7VJhn1Pc5saqSyzHn3Rega2j6/4Cjq3x0g1afKwi3HwKYX9b
         XMtw==
X-Gm-Message-State: AOJu0YxD9Lk7N51EJGxZxEufTFnuHSSx6I1mQ3UZXnpqIqlESel5wyPb
	mmHrE1xMeCXBxQaEJIhsfirDi4nNVGjhh0WjDIDbWZ0qvjzm28YQexDRJWv0305F4bPEsXrziyQ
	HtnTG46fWLPDD4McIJhG0dQu6llXN1VtZqR8=
X-Gm-Gg: ASbGncuOBMEaftBIDDWvLqY6+96ZVyUN7EEnCuPqQK0J/umAiRalw8w7Mh+GsbdEbV8
	kja/vBBylyb8awliPIRU6GFRRdWEellnQPvXVtkWMT4e4bMIS5ylkFDpfu5BzlfxLiD9O3V7y
X-Google-Smtp-Source: AGHT+IEFWIExvNK+Tkq+W1hOldtNrawKHy98EG8HbKuak9u8AIjwmCrAEmp/BsQXBqZT/OrI1ZGK2/ciLaEIrlyq5SA=
X-Received: by 2002:a05:6871:d048:b0:29e:3d0b:834 with SMTP id
 586e51a60fabf-2b1c099e3c4mr944038fac.5.1737090024590; Thu, 16 Jan 2025
 21:00:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Wyatt Carpenter <wyattscarpenter@gmail.com>
Date: Thu, 16 Jan 2025 21:00:14 -0800
X-Gm-Features: AbW1kvZQzkfOz5FZQyoqgBPFGixoQ2u4eQPnbA9LkcQCIeKyosz6zr8rOcBdNI8
Message-ID: <CADwVmK1HeikMTODLu-NpThE2po2u9n9FaCgEQQQcvkzz-3h57g@mail.gmail.com>
Subject: comma splice in unicode(7)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hello! Today I noticed that in unicode(7)

> A combining character just adds an accent to the
       previous character.  The most important accented characters have
       codes of their own in UCS, however, the combining character
       mechanism allows us to add accents and other diacritical marks to
       any character.

should be

> A combining character just adds an accent to the
       previous character.  The most important accented characters have
       codes of their own in UCS; however, the combining character
       mechanism allows us to add accents and other diacritical marks to
       any character.

With a semicolon instead. Hope this helps! Love the project, by the way.

Regards,

Wyatt

