Return-Path: <linux-man+bounces-4212-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 47911C180B6
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 03:29:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7471E1A2712C
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 02:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161862D7DC1;
	Wed, 29 Oct 2025 02:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TLpkAiay"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472AB2D73B0
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 02:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761704959; cv=none; b=jyzApTLiQiwzpPk2eVLL9MEi5P7E8Btuq1UbqbFeH8yOYTQe3yD37xor2AQoHCndulwDZjuZYeaPyuxHSnkLvWWxpuLqvQ+UIBFELLulvNWnIiraBqxCm6iXloCVUvD/4mP+PcKn3ZsU8b1SnwcopL6AQVlrK+EFLLhA9ZWAeS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761704959; c=relaxed/simple;
	bh=hwuGVgbxkfrPehaVc1+yKjSuJdyvDm42TyLWIl1/U6o=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=APfwlVsdYmoyQApJgKkOR/Oro+K36iYTh36U4agNzsqNDfzIzAW6IeXlowGYwc9QrLaB6u369VJQRa4rZmGx0TI6PeuOn+UdwLK9EGhzv5WaDmSQ3BEEpgx6znKzNcvpDeZSnfAUcHoojTkDbgFsJgJzGolQrAGJZhlXFbQdrK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TLpkAiay; arc=none smtp.client-ip=209.85.222.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f196.google.com with SMTP id af79cd13be357-85a4ceb4c3dso617198585a.3
        for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 19:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761704956; x=1762309756; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hwuGVgbxkfrPehaVc1+yKjSuJdyvDm42TyLWIl1/U6o=;
        b=TLpkAiayoYpl+tE/Q/uqQkyFgw3Zh0pOfl9o/XAZ/jyS0MRiDMYiUh2FxcImzGmtIg
         LyVJ8138f8l6gwSh5ozSJWYJr3AwjkZWbd1mZm1PJoJFC6joFrx4n5Mx79nOS2Gb64VC
         93Y1XSwOQ5QRIB44Ho7338Ddkf0xCPSYTYHXBL4K5cO7szkjs8Xy3Bhhhzr4i6Zf0LQy
         LY9HJTGF5W8xFHBgRX5A6LA9MUzTFXyEut9Nv5zyY198q7N2YqSjjvLCfjJvGyLbadti
         XcPgCRNOgUWvJqvPbib7XrZRJDiZwelgPrVpRkzwH9PF1sSK+ZnrcNuWHUDjvtWKhfXT
         GTIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761704956; x=1762309756;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hwuGVgbxkfrPehaVc1+yKjSuJdyvDm42TyLWIl1/U6o=;
        b=S96DX4FuYlXIUc6zl8ambS3lksOeWl1JlZKAPiiKgY2Cqqwzs2BQ2SHMpA/O/2OdYi
         3IsVL/W5hPkkrf2ccOuZyGxmq0eHKYIzVqo4Ir811VIuE4BkYGLQetsL+n1kEIbI/fzg
         jNNgVlzQIIZqv9WQqcW8Zn180ZFxG9Sxcfw9B082fCbcRfCky0sMSyJ6+Afh36Lu3SLs
         5F8NMSsAsD8wdsSnt56Q5kUMiYVLLaufv80ONXINWwZqUZr0cBdCbHqfsNacYIafA3QT
         EoZ7rL4ExFctWEvFoGbMj26n7UpjF89z/por59dYhWXXJH6WUDmojdwIPoYe2XH3IXBi
         Uyuw==
X-Gm-Message-State: AOJu0Yyrb3vI6aGl5Jcjzmvhb+YQHIWncEiNcuFxCHNNCuTzergCZmqQ
	k5vQUBRR9hAgHuEDK1jzJIRoa917TKYbI7rKCgJVdEOv/RlOdH8AresFfOU+qwbPZC3BSA==
X-Gm-Gg: ASbGncvyip3hwAXwH8quqD+gm9YctnIHyGWmlAoJT7tes8ToQVfIDUzGnW0MBigTRZp
	tzDM065g4ex/vatu94Gn9oQvW7IYmQP8yOPMaEdR/bQ8q4Y/Tun7Atkgu+GUCW33ToWF80OxZ7Y
	Sa6cFrZptiwTz8jV5WG38GG3OR6XM1wncKWh0htXkaprY4B3YMMwx27MEZOtanoJe1y1yA2LvPD
	QhfuKQU+9b5DOrslWVgx+oLeFQ7lzywK9ffho7IpxdTQC8uuiyw5rPChdD+mLTeqEltWQau4O/K
	affRWcHBmof2A2xRANkVOE/pRMuMgAgnGzjkPJ2Q6S6HC2S6ukLRev3jdCUJsEg8xXE3MCEDZku
	YmkswPhkTUadp8etsM53BjVef46hsXBEjfo91BTHwlJqF7pYtSbJBqDDcx5Css2uHKL5fPnlFMi
	PnMDenTX1RLmjZQlPA9xUI9BPAsjqrWEBbGRVfLABKfvtWzNafcSP2ma8qqjs=
X-Google-Smtp-Source: AGHT+IFSck3iRX2O3F8AxNGNXrPTbir+6Gik+r47JYB82kZ9S1Pgn6bkZm8SG3ldQsf85WtWxZTlIQ==
X-Received: by 2002:a05:620a:6890:b0:8a4:6ac1:aed with SMTP id af79cd13be357-8a8e436125bmr233536085a.11.1761704956013;
        Tue, 28 Oct 2025 19:29:16 -0700 (PDT)
Received: from secra.localdomain (pool-71-255-240-10.washdc.fios.verizon.net. [71.255.240.10])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89f261747efsm940993185a.55.2025.10.28.19.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 19:29:15 -0700 (PDT)
Received: from secra.localdomain (localhost [127.0.0.1])
	by secra.localdomain (8.18.1/8.18.1) with ESMTP id 59T2TFAL086564;
	Tue, 28 Oct 2025 22:29:15 -0400
Received: (from secra@localhost)
	by secra.localdomain (8.18.1/8.18.1/Submit) id 59T2TF4M086563;
	Tue, 28 Oct 2025 22:29:15 -0400
Date: Tue, 28 Oct 2025 22:29:15 -0400
From: Wes Gibbs <wg21908@gmail.com>
To: linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com, colomar.alejandro@gmail.com, bigeasy@linutronix.de
Subject: Re: [PATCH] Subject: copy_file_range.2: glibc no longer provides
 fallback after 2.30
Message-ID: <aQF7-4nEtRb7oJsK@secra.localdomain>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alejandro,

You emailed me earlier about my submitted patch for 220489.

You're right - the patch had the wrong author line.

I've corrected it and resent a v2 with the proper Signed-off-by tag.

Thanks for catching that!
Wes

