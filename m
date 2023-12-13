Return-Path: <linux-man+bounces-255-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D56810D8A
	for <lists+linux-man@lfdr.de>; Wed, 13 Dec 2023 10:41:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FB311C20966
	for <lists+linux-man@lfdr.de>; Wed, 13 Dec 2023 09:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A819208C0;
	Wed, 13 Dec 2023 09:41:45 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.ekdawn.com (mail.ekdawn.com [159.69.120.39])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AF06D0
	for <linux-man@vger.kernel.org>; Wed, 13 Dec 2023 01:41:41 -0800 (PST)
Received: from [10.42.0.205] (dynamic-176-003-195-073.176.3.pool.telefonica.de [176.3.195.73])
	by mail.ekdawn.com (Postfix) with ESMTPSA id 122B61858AE;
	Wed, 13 Dec 2023 09:41:31 +0000 (UTC)
Message-ID: <aa647d1a-b577-42d4-b9e5-42b591b60e94@horse64.org>
Date: Wed, 13 Dec 2023 10:41:02 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
 <ZXhrblTGLBirUpki@debian> <c78fe5eb-65cd-4705-8628-d07240906bff@horse64.org>
 <ZXiaxx3mjXhLDayT@debian> <2c20d504-e6a4-476e-879f-be5618a4fd35@horse64.org>
 <ZXl53MYCgFRMSYUG@debian>
From: ellie <el@horse64.org>
In-Reply-To: <ZXl53MYCgFRMSYUG@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

I'll have to look over the rest later, but for what it's worth:

On 12/13/23 10:31 AM, Alejandro Colomar wrote:
> There don't seem to be any
> races in open("/proc/[pid]/exe", ...).

Sorry if I'm just confused, but I don't understand how the given test 
script reproduces or tests anything relevant to a potential open() race.

The race would work like this:

1. Process A issues open("/proc/self/exe")

2. Process A's open() on /proc/self/exe heads into whatever libc or 
kernel path that resolves where that symlink points to a path, if it's 
treated as one.

3. Process scheduler switches to process B.

4. Process B switches out process A's binary, such that a different 
binary is now at the old path.

5. Process A's open() code in libc or kernel space resumes and opens the 
file pointed to by the given path, which is now a new binary.

I'm pretty sure you can't test that anyway to rule it out, that could 
only be answered by looking at all the relevant code and whether 
/proc/self/exe is ever resolved to a path (like I assume an actual 
symlink usually is) or directly to an inode (which would likely be safe).

Regards,

ellie


