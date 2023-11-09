Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 438DD7E713E
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 19:11:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344920AbjKISLO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 13:11:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344906AbjKISLN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 13:11:13 -0500
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9644825B4
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 10:11:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 40EB93C011BDC;
        Thu,  9 Nov 2023 10:11:11 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id u3ooyhGvNewr; Thu,  9 Nov 2023 10:11:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id E42783C011BDE;
        Thu,  9 Nov 2023 10:11:10 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu E42783C011BDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699553470;
        bh=ZQamnXHbJT4VVtSioVHHxz0yLNDu3DEErvwwr+u9RXQ=;
        h=Message-ID:Date:MIME-Version:To:From;
        b=f5Moe9f116PuzTREujKc6l1R273JUiOPJH6y9SbUZBKMhyPG77FfhhKRhdTgpaDkN
         2Vho4Gq2WCKVNkT7HtxAiekeM494kZH8R/sU6SxnHd2wPmY2FRsgiB0nTz6Aq4UZnD
         EyaceFko3ylreT1xBu7FB7mh06a97NLuTHK0TzqqL9Df+s3raj8Sjxok9cNFgRyq4S
         R3foDEpmZtrS0vwTeyiyfR+TuOjWiVAJcpSN6aaVSW5J0kUXQeFLuhxiRYabjC31Mh
         kTqa0NIo8F3/CBtKqBv9fHeZK6QYugCvw/A749wKtAjZqwsjrtZDrQycPlN1WsB4Q5
         fl8kqWBjs52kw==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id o4Fkr0D7Afas; Thu,  9 Nov 2023 10:11:10 -0800 (PST)
Received: from [192.168.254.12] (unknown [47.148.192.211])
        by mail.cs.ucla.edu (Postfix) with ESMTPSA id B9DC23C011BDA;
        Thu,  9 Nov 2023 10:11:10 -0800 (PST)
Message-ID: <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
Date:   Thu, 9 Nov 2023 10:11:10 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
To:     Alejandro Colomar <alx@kernel.org>, Jonny Grant <jg@jguk.org>
Cc:     Matthew House <mattlloydhouse@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian> <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
Content-Language: en-US
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <ZUzEw2j6gHF5WtsO@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-11-09 03:38, Alejandro Colomar wrote:
> If you are consistent in checking the return value of strlcpy(3) and
> reporting an error, it's the best standard alternative nowadays.

Not necessarily. strlcpy is subject to denial-of-service attacks if the 
attacker has control of the source string and can attack by using long 
source strings. strncpy, as bad as it is, does not have this problem.

Instead of this:

    if (strlcpy (dst, src, dstsize) == dstsize)
      return failure;

applications that want want to copy a string into a small nonempty 
fixed-size buffer, failing if the string doesn't fit, should do 
something like this:

    if (strncpy (dst, src, dstsize)[dstsize - 1])
      return failure;

This avoids the denial-of-service attack and is portable all the way 
back to K&R C.

It's unfortunate that strlcpy was misdesigned but here we are.

