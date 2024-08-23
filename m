Return-Path: <linux-man+bounces-1677-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CB495D49D
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 19:45:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 405BB282C48
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 17:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 003F8190470;
	Fri, 23 Aug 2024 17:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="lzUX3FyK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0B818E059
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 17:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724435099; cv=none; b=BGgBRhpZ7QNyHIHSpKjA55e+nhJbcj+KKPMIfxxBrquAPN2S1RYUD+YyATukNAejtveLo9Pr0BD+upPT+mRl3JnqoIk9+Q9hLrZWz+IVrB0VFVPs+ecpccSwJvzVhtPszdtLy9li30fxHiBLds/xsFxceq0YikAkYaldDmcEqEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724435099; c=relaxed/simple;
	bh=77sZsYCpInh1+yUPiZBwbWHOZUcfhmk0RxIvTiU4UNY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=giRi/PU3muHdELWsLg/lRJgaotbiWDLQhfdKtJf6gAaHqIX/gai+xDiD5CbY9KbwXMg3QMmxUfFCqdD9m8bnGQzRK81GDMRmkEiLPtThSgRQi9fzsM71bPbzSUEocRhyzqskQYyS0Y/ReyfxkjPMUayVuRN1rLOGBzR162gv1QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=lzUX3FyK; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 84BD93C011BD8;
	Fri, 23 Aug 2024 10:44:57 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id kKos_umJSrHh; Fri, 23 Aug 2024 10:44:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 3DA283C00516B;
	Fri, 23 Aug 2024 10:44:57 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 3DA283C00516B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1724435097;
	bh=RlBfFqj480IQHc4uW0iH2yFmoQ41Tjqu7pG5l8i1WFg=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=lzUX3FyKn4ob8gzMhfRpksee+FDZ6W/x/7uS4Sj5kow6nVLFB+ySTcedUlTkgi4zH
	 jVYL+c8w/+/FwABY7sYVe5z7RU2jTcN+Bo7pF+9ACw4Mg7oE4n6+5f6a63nWk7K8GS
	 Qm3e2Pc7gYCrKwIjVZ6uAp308U53PlCQrWTGiPxTBX6MBCs7b+UPC3WIqrgLD8xxBK
	 4AFxQc4lhF7WiBpWmsuGA4SryGfyh4+0JMctedJeH7+l9vmTxqqdpjbjQT2NAPLwRE
	 PlmXT3NhMP8k/xvOs7Ia/HM9AJNngO/8N+sJcoAQtiy/YeOE9iALG7zvTqYsShrZPt
	 +xmdGH+YTZ7wA==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id fH8Smc8tpFet; Fri, 23 Aug 2024 10:44:57 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.150.137.250])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 1D62B3C011BD8;
	Fri, 23 Aug 2024 10:44:57 -0700 (PDT)
Message-ID: <3c04eb41-14aa-480f-bf61-b91e5a673bec@cs.ucla.edu>
Date: Fri, 23 Aug 2024 10:44:56 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ctime.3: Document how to check errors from mktime(3)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <664cd54a8ee998fd3a07ffc6c9e6fe9d6117620f.1724423646.git.alx@kernel.org>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <664cd54a8ee998fd3a07ffc6c9e6fe9d6117620f.1724423646.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-08-23 07:37, Alejandro Colomar wrote:
>      ++    if (tm.tm_wday == \-1)

'if (tm.tm_wday < 0)' is a bit faster on typical machines. (There are 
multiple instances of this issue.)

> +To determine if

"if" -> "whether"

> +    printf("%jd\[rs]n", (intmax_t) t);

This is not portable in general, as time_t might be unsigned. You could 
use strftime instead of printf. But see below for a better suggestion.

> +    tm.tm_year  = atoi(*p++) \- 1900;

This doesn't work for the year 2147485547 (2**31 + 1899), which mktime 
can handle on typical machines with 32-bit int and 64-bit time_t. Also, 
all the atoi calls silently mess up if the argument overflows or is 
syntactically invalid.

To simplify the example, I suggest not doing I/O or parsing. Just have a 
function that accepts a struct tm *, and returns true or false and 
updates the struct tm when it returns true. That would avoid the issues 
with printf and atoi.

