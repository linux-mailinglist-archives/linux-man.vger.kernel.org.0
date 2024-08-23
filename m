Return-Path: <linux-man+bounces-1659-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F5A95C49A
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 07:07:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8994BB21344
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 05:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 393BB482FA;
	Fri, 23 Aug 2024 05:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="QY1rmGz2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8489E8493
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 05:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724389663; cv=none; b=KHiu2sfEz+KOHx7i3Gq4jJqtJ7SLN97dWjAVrhCsOcEA7ts7wANirxSz87g5V8lBYwHTaKzaEKh3aX+mQP4SOjjygbTEIfYl+4Uiis9bsPWTJIPyV/h8n/NJIbIGMl8aoZS9yLk58g80CEjFqyd69+45zf7s5FVOJ1/rGXVJSBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724389663; c=relaxed/simple;
	bh=x2eMGM9pTnlC+7sHfUvBp63mUq2G4yIDHt0sIBMaSCA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NkqSvci9b1XlgTdg78yEh/GUQYon6PfnrPRFl5X6qPlET8lviAcne7vvth22p7HnPzj/ACbAJYkApz7S0U4NB4Devk7zIeZgBFAg2nUZz1CFxyxlY0JZf2sQ1YQF0iTVe9aL53xsWpRbDbOt1THe0RZFqyU8KrDc2h80oq7iu4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=QY1rmGz2; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id CC3003C011BD7;
	Thu, 22 Aug 2024 21:57:39 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id rUExoQjSe5RC; Thu, 22 Aug 2024 21:57:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 8DEB03C00514E;
	Thu, 22 Aug 2024 21:57:39 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 8DEB03C00514E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1724389059;
	bh=ck2ckbh2cstHtjWF9Yx1B+qNhE/6W11Kh0vpHxlbYRc=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=QY1rmGz2WIMmaHitFMm1kb8YszD6oRaMFc8c5s40QcjyL2UDrMdti9hZ7MIw+yyiJ
	 1lP4UlO3QbWgiHN+gJIJhG3bppLiHyxc42611Z/qE3IPAv6Qa2FKMWHE5TUvt50TGo
	 NfpZKggywtmSN8zaRsz0ntLlmaEUEJJraJYjRYxvKQCfmxeCEfNBqvbcn5pVRsUwks
	 DGKwxWV/MrLa5TisfK8IN2nBl+COkVFQlHdt229xbtP9xRgdJWd7hbRjoGNa/QcOsh
	 00nqD2QLLSW/64Qk3/c746fxmtfJWUvt5w1AG1fEgNKqctRKvtMr6OM/ea1wZS3uWN
	 aIQp/rV0Exd+w==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id gcIN4tRtYTbx; Thu, 22 Aug 2024 21:57:39 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.150.137.250])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 706A33C011BD7;
	Thu, 22 Aug 2024 21:57:39 -0700 (PDT)
Message-ID: <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
Date: Thu, 22 Aug 2024 21:57:39 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
To: Alejandro Colomar <alx@kernel.org>, DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org, carlos@redhat.com
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-08-22 16:49, Alejandro Colomar wrote:
>           t = mktime(tp);
>           if (t == -1 && errno == EOVERFLOW)
>               return -1;

This isn't right, for the same reason similar code wasn't right earlier. 
A successful call to mktime can return -1 and set errno to whatever 
value it likes.

This is just the first problem I found with the code (and I found it 
quickly because I remembered the earlier problem). I would expect there 
to be others.

How about if we omit the sample code and make the minimal changes I 
suggested earlier?

