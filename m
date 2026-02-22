Return-Path: <linux-man+bounces-5177-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0m2IC+Nhmml3bAMAu9opvQ
	(envelope-from <linux-man+bounces-5177-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 02:54:43 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD9C16E65A
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 02:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F1F7301DACC
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 01:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E46837E0FF;
	Sun, 22 Feb 2026 01:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="W/5NNcP5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CDD54652
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 01:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771725277; cv=none; b=inC4V2EeGg4lqpJ8pecQmqJYaukzPxjkNfLBMZw9qHzppuH36BWsRZQMsoAfxO1uIBlFmsq5uQugZbiTfVozPZ7xvC294IAk6I9CJd4CPFa8qJ8i64Qnv9YjnJ1NvpN/kOIxFtarQfyELbkf6tidhbCmgmWbOzWQypMHwrCrYiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771725277; c=relaxed/simple;
	bh=E7O20T6y9csWhu7Gl2esBoOKQ3cPNZb8RFwGotoBCqU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fDJraciWz2k6IrYGEgWebFCxONWz/6mz211WRRsgyZoGnuBUyf5IM/IGAC2m85gfc96xU4N0W9N5FyrDL1LfA2GBhImzWq9kt7tgWyjWBYYVRYCNb/o/mUYu6OQpsvvLvB7LC4dWqDjSY/b65ICgsZsXHKeLr/s4KC5BJmFJFzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=W/5NNcP5; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 0855E3C011C8F;
	Sat, 21 Feb 2026 17:48:32 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id DXQkmocwsXNX; Sat, 21 Feb 2026 17:48:31 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id D27023C011C9C;
	Sat, 21 Feb 2026 17:48:31 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu D27023C011C9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1771724911;
	bh=cLZRYGLUU3cRX3zNzo2sJ5TGRu1GJyNHwR41q2E+8bk=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=W/5NNcP5aO3ezitR+EDwKSXRSu4ZA8bETYNffXmK3jXLvXAxo0tI1ostxXWjisc/W
	 6NugAVok7TsyNQ2gX6hkZ8r8S6eFcdtYKtwNcKB1ubZihMIJb+1uV1tsoxLtAU13r7
	 ijTBnnN+xhTOuPu/zXh2Xf1PuBEhjiEAg3sysUdDi0SHjmyJ8Iq8BYahoesQlxgINI
	 b/9NbS3busqkv0FNaWHQD/gqqJw6GVtp/LWzysYCkbcxRlWqLpaQG/epSDxsyOD/GF
	 uDBI7J7HqlCAqbWnCqBmrzhum1Oe4spiErh0I6pmxEJY3LZspisRaxhcyuLFRaYdsU
	 6R7kDn7eVxr0Q==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id 5LEsNdhIAfqJ; Sat, 21 Feb 2026 17:48:31 -0800 (PST)
Received: from penguin.cs.ucla.edu (47-154-25-30.fdr01.snmn.ca.ip.frontiernet.net [47.154.25.30])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 9F9EE3C011C8F;
	Sat, 21 Feb 2026 17:48:31 -0800 (PST)
Message-ID: <a6bffb3c-6b81-4ed1-a13c-d111fd5948fc@cs.ucla.edu>
Date: Sat, 21 Feb 2026 17:48:30 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: bug-gnulib@gnu.org
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cs.ucla.edu,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[cs.ucla.edu:s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5177-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	HAS_ORG_HEADER(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[cs.ucla.edu:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eggert@cs.ucla.edu,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 4DD9C16E65A
X-Rspamd-Action: no action

On 2026-02-21 07:02, Alejandro Colomar wrote:
> +.BI char\~*streq(const\~char\~* s );

I see you fixed the misspelling of "strnul". However, there's a more 
important issue here: that's not the type of Gnulib strnul. Gnulib 
strnul is a qualifier-generic macro, and (unlike C23 strchr) there is no 
underlying function named "strnul". This needs to be documented clearly.

