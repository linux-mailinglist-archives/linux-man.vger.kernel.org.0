Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEB2B7CAA41
	for <lists+linux-man@lfdr.de>; Mon, 16 Oct 2023 15:47:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234015AbjJPNrI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 09:47:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233954AbjJPNqr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 09:46:47 -0400
Received: from bee.birch.relay.mailchannels.net (bee.birch.relay.mailchannels.net [23.83.209.14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 390D71AE
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 06:46:10 -0700 (PDT)
X-Sender-Id: dreamhost|x-authsender|siddhesh@gotplt.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
        by relay.mailchannels.net (Postfix) with ESMTP id 8BFB8801A3C;
        Mon, 16 Oct 2023 13:46:06 +0000 (UTC)
Received: from pdx1-sub0-mail-a202.dreamhost.com (unknown [127.0.0.6])
        (Authenticated sender: dreamhost)
        by relay.mailchannels.net (Postfix) with ESMTPA id 1FA0D801498;
        Mon, 16 Oct 2023 13:46:06 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1697463966; a=rsa-sha256;
        cv=none;
        b=6gCqZ9/2cG74gUdVZVQ0SKAU6MUC7iC6zILRi/ahxEosphc2c/cRAKp9Kb/6O59S+zmzGn
        7dZLQoFEY4/n136ZBPFYRuvOQES6XEzimGcsB7F3DloLlUkKDNWdmVdHSeLSiBkUkZIttL
        si0UzVzMzM+MW3Xd+pD3X2Qr75sMHrkAq3l7Ya7VKaGy1tfJyT9lBPSWKrVUnYSkiwHEzh
        pIt/5gSKSMcsEBur+seMO0cJSmjaHl8urA2DbjHE9kt4csL8edIGtRVQVF+JA8yAIYnGti
        1xk0+u4aYtgyx6ulagcuQfyURC3rRWSTgVmBx2I+qvAerMUuXz/NjaU8kFCIZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
        s=arc-2022; t=1697463966;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references:dkim-signature;
        bh=ob5hCQIK5/JIhKqI0k9VbzdIAd27C2kz/FAw5dLHCbE=;
        b=pJNnFh9RZBCqtIFjn9K3xn/QGRu6UQyUtJQEiBafsgbPJaAS7QwaXitKXnDKrqSsMN9ncX
        dq/UqHaODQ986xU7hCGWjkwU8uPQZUpMrlA5VuHE08KOohiiWnyApQnuGlPyS7JEAnHJs0
        QhrNLYTrIhaQvdk3e70CVaCRdwpjRHEA7FdthMPwwwpuNxoHwG+aWFxMXHaYkrk1vhEPtl
        6JXRtArGVtpSgoAzFcK17Y4UITroyxBhR07VjxXBeKWWztKuNl/4R7KjC/eSdpnf3d4Wgl
        LypCtQfCTZnzWB1jE5l+/PHN2WK8TxJyBzhyM7samFmkiv7s3MRbHdWN5p/usw==
ARC-Authentication-Results: i=1;
        rspamd-549cb46585-mwtc8;
        auth=pass smtp.auth=dreamhost smtp.mailfrom=siddhesh@gotplt.org
X-Sender-Id: dreamhost|x-authsender|siddhesh@gotplt.org
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|siddhesh@gotplt.org
X-MailChannels-Auth-Id: dreamhost
X-Duck-Descriptive: 11fbb27f27eee009_1697463966367_3742882740
X-MC-Loop-Signature: 1697463966367:2086737760
X-MC-Ingress-Time: 1697463966366
Received: from pdx1-sub0-mail-a202.dreamhost.com (pop.dreamhost.com
 [64.90.62.162])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
        by 100.100.60.218 (trex/6.9.2);
        Mon, 16 Oct 2023 13:46:06 +0000
Received: from [192.168.2.12] (bras-vprn-toroon4834w-lp130-02-142-113-138-136.dsl.bell.ca [142.113.138.136])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        (Authenticated sender: siddhesh@gotplt.org)
        by pdx1-sub0-mail-a202.dreamhost.com (Postfix) with ESMTPSA id 4S8JKn4S0JzDh;
        Mon, 16 Oct 2023 06:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gotplt.org;
        s=dreamhost; t=1697463965;
        bh=ob5hCQIK5/JIhKqI0k9VbzdIAd27C2kz/FAw5dLHCbE=;
        h=Date:Subject:To:Cc:From:Content-Type:Content-Transfer-Encoding;
        b=XrbPLKXbmLKkYXD8X78vhRiS6YPzXFYk/brE96sSiMKNasQt7/fhRhbytnr4uFJ0Q
         +mJ1J+yyp2sbJB5B65PYOdZdfmbkW9IpsQA3UNShhht6B8474+eNlO5bRawbNYx7qc
         pJ8MfYHhDs/jlaW7fPQKh6JSquUAoUzRGuTYF0Amptxq4GjCX1ygYnC+bIOaOOpM/n
         xqjEiL1u2rwwQPWdNC7/YZ9rZtBPGfsQawMs1qm/i3an2Nun4CTebGZ/qs4KQrGcS4
         2DPlYiKFMAb+tmzZpF8FXLIbYdpNZCXm825hHX4mBAjXnK9LwGqOv7OoKdZIRFuPUo
         ioOkQMQGRoFUA==
Message-ID: <52ea4781-2c94-d9c6-1968-07da6d11184c@gotplt.org>
Date:   Mon, 16 Oct 2023 09:46:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] ldd: Do not recommend binutils as the safer option
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
References: <20231016061923.105814-1-siddhesh@gotplt.org>
 <ZS0LipiiOBsntjmb@debian> <9af68795-52c0-f376-220c-d13d7adf622a@gotplt.org>
 <ZS07lyyLzTRXO7Ta@debian>
From:   Siddhesh Poyarekar <siddhesh@gotplt.org>
In-Reply-To: <ZS07lyyLzTRXO7Ta@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-10-16 09:33, Alejandro Colomar wrote:
> Hi Siddhesh,
> 
> On Mon, Oct 16, 2023 at 09:28:39AM -0400, Siddhesh Poyarekar wrote:
>>> Should we maybe keep this example, and suggest using it with sandboxing?
>>> Or is it not useful anymore?
>>
>> I don't see the point TBH.
> 
> The point was to add another layer of security, in case the sanboxing is
> not perfect.
> 
>> I wouldn't mind if that example was replaced
>> with lddtree as the alternative since it is functionally equivalent. However
>> it would be a safer recommendation to put that too inside a sandbox because
>> IMO you'd generally never want to run or even analyze arbitrary executables
>> without proper sandboxing.
> 
> Sure, I didn't know about lddtree.  Feel free to use it.

Mike, could you please post a patch replacing the objdump example with 
lddtree and recommending sandboxing?

Thanks,
Sid
