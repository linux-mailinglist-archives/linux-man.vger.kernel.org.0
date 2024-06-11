Return-Path: <linux-man+bounces-1123-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 543C3904212
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 18:59:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6885A1C25353
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 16:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D080947F60;
	Tue, 11 Jun 2024 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="POjYa7SS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9E61EB21
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 16:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718125114; cv=none; b=H2iR3uztTnoWCHSsh0ugQd4N8iB92CNNMmtwOHGVl+Z1UFxiDXXo8rgCPjfNTFsAh2sSom/JD5u264Ab/YWlKJ0qEiQKIaysMKsIatn+wDTPesdZP7wOSrB/VKRgAs6kDaI1YBnfEb2XVC19MYwkHK6xUThLSB2fG+ad3qxsIW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718125114; c=relaxed/simple;
	bh=QrH8Zxf/KNvuSyZIM4mj4lIxd1EQlUn8XD3Bf49NBqs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=juFACEqNI2IHhwF+MDsUjXFd8nx47jd5Q80XT9YwZ6daNYHBiavMe6MQ5o1N5q9WpaLxZd+YkPGmWQcX7lcoQF/gUnRUwKyYyCoLKdF1N9Z4zLMOC3wUc74b9Z8yzqTDnxMx2uju2Iek9dv/AzR8SzdlyVQPaunKf6AlqJivmLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=POjYa7SS; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id D04B63C0140A0;
	Tue, 11 Jun 2024 09:58:30 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id pM76s86upvKm; Tue, 11 Jun 2024 09:58:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 871BC3C00E8B0;
	Tue, 11 Jun 2024 09:58:30 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 871BC3C00E8B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1718125110;
	bh=pEFR/lxxYRpjVPK0r0xI25kGcGp90uNAEuk3YNpLKUI=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=POjYa7SS3K1zVO5X3iR+1zV64ag0t5mmWoDCKdvW4XvCvvZYXpxNTLmYEFZoMqOAj
	 ItB3tHzepYHioRRuHrBBYJoIyXdg81Kd0FOUj5Yn3YtP/vpyQFJs1ienKNFYlK1FSO
	 CgcjZCih8NWQQPqQNMSKuVqtxD/3Zd2lZOIV0kEVoZmsEbqXJ3J7zXQLm6yeVlds4i
	 SY1zEHw0Zlosc9ISrrp6wM6DUrPs4ortfAcXpigIqLXYC12OmueP0STu0eN7xRgssP
	 wpT6i0lpVdkjW5sJs1nKI6teWbBG55ZRwPjJikYSEEc3poAPcHQxEV3bQ+o/4zMBOb
	 qbOddZhXNwLRw==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id VHxR6Q6jg6iD; Tue, 11 Jun 2024 09:58:30 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.154.17.165])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 6D6413C0140A0;
	Tue, 11 Jun 2024 09:58:30 -0700 (PDT)
Message-ID: <de04dd8e-62ae-4599-80df-d8a191903dee@cs.ucla.edu>
Date: Tue, 11 Jun 2024 09:58:30 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/12] tzset: update more POSIX citations and quotes
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-10-eggert@cs.ucla.edu>
 <ry4s4siyerytqil55kq5qsbv4kl72uogq33qlors7kikcsinte@nlhgialcfi37>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <ry4s4siyerytqil55kq5qsbv4kl72uogq33qlors7kikcsinte@nlhgialcfi37>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

All those changes sound fine to me; please feel free to install them 
that way.

