Return-Path: <linux-man+bounces-1689-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA96795D811
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 22:55:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68DDA283E18
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 20:55:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 130361C6F77;
	Fri, 23 Aug 2024 20:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="RUVc0Y+n"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7AE01922E4
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 20:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724446521; cv=none; b=EWI2rChKdid3CYU3ZnU4M6GUl/OrkM7yZ9XPoKGfHj7Ge2Jvv6RLc/MjKxRPrG5UYYeHaEB5EyEkphQRpKrpdskY4fgo1SN1LSIjtNVSGb6za1bdp45Ud41lTjUDNsPPsJXRQ47Cp0Z8QSP2xag8ytvUHOXRa949qzRu37iNOX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724446521; c=relaxed/simple;
	bh=pjsGuRGECflPmtrkkom8pjnaii9ZhCSV60P1eHskVNg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LRzmL3mR2W3Xyobb3VrNvsdDVMVYliobbZbIR/VgZThKl8kmecS2fm/MpgNrYInMbIWoTT69yzBF8cptb527mDJa1rbyvUVFqQSh9bwUnOEKKiBQxltYVCTTuWxUKUzVJDsHbDadYKoAirZgDFOb1GnQOis4EDvRfrtZDifdqL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=RUVc0Y+n; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 09ECB3C011BD4;
	Fri, 23 Aug 2024 13:55:20 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id 4zwOEvgXXvCi; Fri, 23 Aug 2024 13:55:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id BC78E3C00516B;
	Fri, 23 Aug 2024 13:55:19 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu BC78E3C00516B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1724446519;
	bh=5gnYB0QZwhvg2lidJEsC/DUcEk8aHAYZtnLtJomKxbA=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=RUVc0Y+nc4ZK8vlXeX24qrkXbP1o9lXKJmsW0yTuJJTcjA0JYi2peM812xoI8UVSi
	 2ATnAiXGBcVUEOz3WVJRdEcPbHkIVXZTTTiYXCaVgrB8PkRqvsKi94eZ9qbnR8qqis
	 4OrXhycIeHeGBZv/4RlrgpIVdo2BImLOU/sq+15NBKbH73KmAA3sxVimuTxGDwsat3
	 ruPZroen70N1xbMcQWREEas1m4BU1iaYkkl1wsgFe/ltkrj+Ur8rEAtCvl5sEat4zW
	 rX1a8P4PK5TYqkNlmX0eVtDKPHjEPl7fvHkfRostPLBQdgKKZXJNh3x1pQf36VuBQo
	 +5BcTyPeM0qKQ==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id OuiUGBOP1LXB; Fri, 23 Aug 2024 13:55:19 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.150.137.250])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id A04033C011BD4;
	Fri, 23 Aug 2024 13:55:19 -0700 (PDT)
Message-ID: <6323db88-a8ac-43d4-aa37-a65ec89c343b@cs.ucla.edu>
Date: Fri, 23 Aug 2024 13:55:19 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ctime.3: Document how to check errors from mktime(3)
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <664cd54a8ee998fd3a07ffc6c9e6fe9d6117620f.1724423646.git.alx@kernel.org>
 <3c04eb41-14aa-480f-bf61-b91e5a673bec@cs.ucla.edu>
 <el23ihpmltucruo3s2lbxplhkg4batoca4yumyxpz4ursbpxk2@gbfgwtcypywo>
 <e5d4aa14-415c-4214-8900-c9ab43ed1297@cs.ucla.edu>
 <6ph33wz4jbsjwejgra33yjs57535ksqbxp6fviyav2p3bhbjww@efh4fciaoycr>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <6ph33wz4jbsjwejgra33yjs57535ksqbxp6fviyav2p3bhbjww@efh4fciaoycr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-08-23 13:43, Alejandro Colomar wrote:
> strftime("%s") would be interesting, but it accepts a struct tm, not a
> time_t

That's not a problem, since mktime effectively returns a struct tm as 
well as a time_t.

You should not use strftime with %s, though, since that might not work 
on some platforms during fall-back periods. You can use strftime with 
"%Y-%m-%d %H:%M:%S %z".

