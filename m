Return-Path: <linux-man+bounces-249-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA0080E6DC
	for <lists+linux-man@lfdr.de>; Tue, 12 Dec 2023 09:55:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4DBB1B210E8
	for <lists+linux-man@lfdr.de>; Tue, 12 Dec 2023 08:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A870756B9A;
	Tue, 12 Dec 2023 08:54:47 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
X-Greylist: delayed 367 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 12 Dec 2023 00:54:43 PST
Received: from mail.ekdawn.com (mail.ekdawn.com [159.69.120.39])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8170BE9
	for <linux-man@vger.kernel.org>; Tue, 12 Dec 2023 00:54:43 -0800 (PST)
Received: from [10.42.0.205] (dynamic-046-114-154-092.46.114.pool.telefonica.de [46.114.154.92])
	by mail.ekdawn.com (Postfix) with ESMTPSA id 2E697181004;
	Tue, 12 Dec 2023 08:48:26 +0000 (UTC)
Message-ID: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
Date: Tue, 12 Dec 2023 09:47:58 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
From: ellie <el@horse64.org>
Subject: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Alejandro Colomar,

I hope I'm emailing this to the correct place, I found this contact 
information on https://man7.org/mtk/contact.html regarding man page 
feedback:

I'm suggesting that the "man 5 proc" page is expanded with a section 
clarifying /proc/[pid]/self race conditions, I described details and 
even made a text suggestion here:

https://bugzilla.suse.com/show_bug.cgi?id=1216352

(The text suggestion might be wrong, however, since I don't actually 
know what the exact technical state of this is.)

Regards,

ellie

