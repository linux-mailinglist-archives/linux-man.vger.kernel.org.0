Return-Path: <linux-man+bounces-17-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8667E7FE1
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 19:00:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5A58280F83
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 503AE38FA7;
	Fri, 10 Nov 2023 18:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="iWQnYRFw"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B905538F9B
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 18:00:42 +0000 (UTC)
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D610643F0B
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 10:00:09 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id EECAE3C011BDF;
	Fri, 10 Nov 2023 09:58:42 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id CAS1rjrYFtLo; Fri, 10 Nov 2023 09:58:42 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id A6F2A3C011BE2;
	Fri, 10 Nov 2023 09:58:42 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu A6F2A3C011BE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699639122;
	bh=FDHSFXAUo8uqAIK0a/F6vWxlowpPxKnuiHoPek6FUP0=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=iWQnYRFwyfAjFloOWfh9fjEe0zfd05xaAifSwc8i66SOviwv5diWHTxP4qvUasJ8Z
	 Z5KZrul1U52lfBW1HVTzyaDL0SbHQ0kk96rZgzw1Q2w5jNGuHvZP4wySGKn2oZBwFh
	 F9znOypir2LFNBjrce6Yo7h7qtwl0ZkOztMkasSy1OWV7JPisgakX9n6OCaCIeCMct
	 1sNEk+k/ezlWPWIXjnzk01/bVDQT/MHdpHqI+X8oaLdLnRpjh+M54yjBr2zQcKUgyq
	 OxXp7+ZQvwogaSZ8WLNrrgLq/KalLAGH/GZFW9DU6E8aC5yY2K9oIHorJcDrwbbU36
	 6h4sRoCQwx33w==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id YKq11hklznmh; Fri, 10 Nov 2023 09:58:42 -0800 (PST)
Received: from [192.168.254.12] (unknown [47.148.192.211])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 7BAB13C011BDF;
	Fri, 10 Nov 2023 09:58:42 -0800 (PST)
Message-ID: <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu>
Date: Fri, 10 Nov 2023 09:58:42 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
References: <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian> <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu> <ZU4OgiVSyM98EHVN@debian>
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <ZU4OgiVSyM98EHVN@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2023-11-10 03:05, Alejandro Colomar wrote:
> Hopefully, it won't be so bad in terms of performance.

It's significantly slower than strncpy for typical use (smallish 
fixed-size destination buffers). So just use strncpy for that. It may be 
bad, but it's better than the alternatives you've mentioned. You can 
package strncpy inside a [[nodiscard]] inline wrapper if you like.

More importantly, the manual should not push strlcpy as being superior 
or being in any way a "fix" for strncpy's problems. strlcpy is worse 
than strncpy in important ways and besides - as mentioned in the glibc 
manual - neither function is a good choice for string processing.

