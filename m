Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79E007A6FD2
	for <lists+linux-man@lfdr.de>; Wed, 20 Sep 2023 02:23:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbjITAXL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 20:23:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbjITAXK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 20:23:10 -0400
X-Greylist: delayed 388 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 19 Sep 2023 17:23:04 PDT
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C874CAB
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 17:23:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 051103C00D18B;
        Tue, 19 Sep 2023 17:16:36 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id UHwsZ-QFsUYm; Tue, 19 Sep 2023 17:16:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id B2A8B3C00D18D;
        Tue, 19 Sep 2023 17:16:35 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu B2A8B3C00D18D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1695168995;
        bh=gjfKZFbdarI7d3SX5j22tOGoEx/uqLrqe4rF9XZZ7Yk=;
        h=Message-ID:Date:MIME-Version:To:From;
        b=mJBMG4535QAlj7QTot8/Gmy8KaY65iKv5eR8bstELcmqrOZX7sjXgUhxWYzZMO5R4
         F3muLFuVnvEfaTXcpSnR83V7PGuEjibfp69Ut1AZpHHnM7BZ2UJOTbh7aIgK1McyZ/
         fjAO7pesGb6ugx87HpG6vcFcOwyZS/BHfOJsGL3rm0xHbuFmtTaL/6I8DVgAbhSHCf
         KYfH+EsWSSCf3LlHQO7/bytxvEk0k77Yf5Ion0l/OW00RuSwEHdhpMA+jIrYwqugwo
         T7imD8+E/9vB/YiGKr/6dV1ewtkL+cQOj5jBR9usd+U2IE2CbF0yABXtwMkudwwTwi
         mVn/yeuc19dmw==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id ACj6hipVyRpa; Tue, 19 Sep 2023 17:16:35 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.147.225.57])
        by mail.cs.ucla.edu (Postfix) with ESMTPSA id 99FCD3C00D18B;
        Tue, 19 Sep 2023 17:16:35 -0700 (PDT)
Message-ID: <fa623e75-e5bf-b32d-8ce8-27ed59ae03d7@cs.ucla.edu>
Date:   Tue, 19 Sep 2023 17:16:35 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] difftime.3: be more explict about "difference".
Content-Language: en-US
To:     enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <CAJgzZoqty5f=ivODLB6pvZpm4bZWAt83ET5jpMwrEb9oVqS6MQ@mail.gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <CAJgzZoqty5f=ivODLB6pvZpm4bZWAt83ET5jpMwrEb9oVqS6MQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-09-19 13:59, enh wrote:
> it seems worth being explicit that there's no leap
> seconds magic here --- it's just "fancy subtraction"

OK, but saying "This function does not take leap seconds into account" 
is not the same thing as saying it's just fancy subtraction. On my 
Fedora 38 box, if TZ='right/America/Los_Angeles' then time_t counts leap 
seconds so difftime does take leap seconds into account. So we'd need a 
different wording from what's proposed.
