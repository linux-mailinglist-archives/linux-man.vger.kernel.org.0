Return-Path: <linux-man+bounces-2152-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6E99F2DB1
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 11:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0F33164630
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 10:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F33202C5A;
	Mon, 16 Dec 2024 10:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="dklcpUIX"
X-Original-To: linux-man@vger.kernel.org
Received: from out162-62-57-87.mail.qq.com (out162-62-57-87.mail.qq.com [162.62.57.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73726433B1
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 10:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.62.57.87
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734343331; cv=none; b=g+kteC7tjqNTYsca+qt/gF/H63ap7nI4r5WZVG8aiWsPkFHmCf496NW2Sshuze1A3g2+WnmxcB6JBOk6wloIJ6HZQNcQf1h7uyMFko0fQIX8iuvM+4gB/RsTjd/5ymxjC4XCA9xFB9JQIcQVms19euZHVnBbYtToIZnWbXvf6bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734343331; c=relaxed/simple;
	bh=Z5exKOlgBPXtV6meYf1khEXcpL0NoUkOGoXz5IKk+gI=;
	h=Message-ID:Date:MIME-Version:From:To:Cc:Subject:Content-Type; b=jVONZKxJM4PqG/kslH7/ZTECX/KvF6XeCEAQdW7wuwJ0NRArZrHWD887swrx1S/gxgFXNRAyDPYcHRCOSG5zQEud1adn5ZtnKLgo/JdBRcCjx4bZYtQU23FPdoeUnwce0YABfhWTytjrDmn3eUueX0tK+CSuYoyk/qnsxQZ04+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=dklcpUIX; arc=none smtp.client-ip=162.62.57.87
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qq.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1734343015; bh=Z5exKOlgBPXtV6meYf1khEXcpL0NoUkOGoXz5IKk+gI=;
	h=Date:From:To:Cc:Subject;
	b=dklcpUIX6wMrMNO3dQYZjKp+gNm4N08+/uMwjMGtGNoocJsMYY9MfDkvB3/TtUUyW
	 PeMCAoIpwe4pBkBA3ZHlQWvG4mFn7YI+llJ7wzmrV9OfutER0ElfNRBAS1qYCtfH4n
	 3oaADr/v7XPNU/DPnEDPOKoY8emg9dTDi2WJzA58=
Received: from [IPV6:2402:f000:5:1800:e4ea:faa2:bef4:1871] ([2402:f000:5:1800:e4ea:faa2:bef4:1871])
	by newxmesmtplogicsvrsza29-0.qq.com (NewEsmtp) with SMTP
	id E368A813; Mon, 16 Dec 2024 17:56:54 +0800
X-QQ-mid: xmsmtpt1734343014tipaw289f
Message-ID: <tencent_C8D6922C0F618F0B4470A55DEAE00B236105@qq.com>
X-QQ-XMAILINFO: NVQMfSTXSDo/yMbgPWroWRk2F5c6VglQDrYmpebFDSBndV2eTZ8WLHcX251wD/
	 smEZJ8o7sc1tgl5LPR2ly9FdgGqbx05DYJfG/LNI/EtpF6g5jsSkltQegTJRBVScRGWVxhJyIQ6u
	 rqGMt3M3ndafC6DaYO2gIpcxK9R5X8ZNOxm+Wqwx4Incvicy8+Y4LrxJNj9B+OzPRdPqGsf+Q4Ba
	 vfiPSfKkv0BJ2YGrWz7R9pHtkLlIPIyjd+WeGndFYlgcg1u5++3u95HQdzR5KJD7gJVLvjOyKnlI
	 W/9RYIk+4/kylhH1K4zmMd3ytha31xDPNdL/cxRoCJwvKIFVpoBIgzXZmJwOmwIWRfvngKyV7XYi
	 gpBD5JtZ2f2+HrVOFw6e7uNSSuLLzrIYmRvKCj369asCpv9/AEJEG9Ppg+8Wx0L2uawPBHrXZ4KA
	 dAIAnq0mX7iH9Nm6Hx/+vTXT9ISflVzEfBU1XBcdcLR6OHSNwpNawZfWbPXG8yCF28FDcOHPI1tI
	 3GjvqxcGgf59kdSfHm1VV/fbZOszne5Z6Of/DTFUCnX+BueiTUzBvIB2HBPfsWPabRQrwAJ6bZbF
	 PA9UrRbnWsOLOOk5R3GF/Xv2Q90So1UVjnuyFJ0oMyXwslPouSOeg46o+KkByxJf0wMkq/1SPmf0
	 koNdZmBvrXO26EWdPoM7GAUvwJMuQearFc4Ewr3/fM+MPqCEPfx2NBRGhAJOzL0MSGkPCiAdU5tK
	 /k7EXYDJTtm/yHrhzn/fLzqOW7OCEIhJ2jGXCPLPqzJhHC1JIDO4UWQ6vIN2GYrjIWi6LMZH08Zz
	 4mBaq07zALTXjkYlFBUVmPHKkD4Cof8KAmQOSwr74n9AUSSC0eSraYDZbAsQM6egkEV9wI5UjIKY
	 o4I0b3YIjyAHP4EV/5oB5kXpt0f9TggwHDRIqV36BtlDsa1Bem2rsSUICC3zoSJTYe3HEfTHlC8i
	 UBWGFehOXftTa2yAQmgi9dr+KnWSjTw+LW9UDJfN0=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-OQ-MSGID: <f6699239-9d39-409f-babe-d6f4652fe7e1@qq.com>
Date: Mon, 16 Dec 2024 17:56:51 +0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Dashuai Wu <3380520452@qq.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: Inconsistencies between Linux Kernel Documentation and Man Pages
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi，
I noticed an inconsistency between the ARP manual page and the Linux kernel
documentation regarding kernel parameters.

The ARP manual page
https://www.man7.org/linux/man-pages/man7/arp.7.html
does not contain information about the deprecation of the 'unres_qlen'
parameter and its replacement 'unres_qlen_bytes', while this information is
present in the kernel documentation
https://www.kernel.org/doc/html/latest/networking/ip-sysctl.html.

Would it be possible to update the ARP manual page to reflect these changes
and maintain consistency with the kernel documentation?

Thank you for your attention to this matter.

Best regards.

Dashuai Wu


