Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8D7E768023
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 16:48:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232010AbjG2OsF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 10:48:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231962AbjG2OsA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 10:48:00 -0400
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44F7BA8
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 07:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1690642076;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=fhJ84o6yaBK8vke0ml4fnzNjvBQ3Zv9LosMtqsQMhKU=;
        b=rjnooDqCcm/QaGTTlct4IAWR3DvMzamJFtIQXppraGlDZQbfptv1+vxUZWsdmP2crGteVg
        xOE9zcHtdI73ZYvcnln7ZuqH7gVj9t7Wyll9nQw7E46qvSEmCBLb3+E6ZtmKmS3xsBiEBc
        0/4lnkzIHML7+FCIu1zlZ63EvwzhKsE=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id d3067764 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Sat, 29 Jul 2023 14:47:56 +0000 (UTC)
Received: by fluorine.ljabl.com (OpenSMTPD) with ESMTPA id c0a0725f;
        Sat, 29 Jul 2023 16:47:55 +0200 (CEST)
Date:   Sat, 29 Jul 2023 14:47:55 +0000
From:   Lennart Jablonka <humm@ljabl.com>
To:     Matthew House <mattlloydhouse@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
Message-ID: <ZMUmm3hTkrhzq2CW@fluorine.ljabl.com>
Mail-Followup-To: Matthew House <mattlloydhouse@gmail.com>,
        Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <ZMQVYtquNN-s0IJr@beryllium>
 <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org>
 <ZMRUmgRfRVxL3wEo@fluorine.ljabl.com>
 <48509f53-05c5-4a6f-7ad8-e5d1639dc674@kernel.org>
 <20230729143855.1656509-1-mattlloydhouse@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230729143855.1656509-1-mattlloydhouse@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Quoth Matthew House:
>On Sat, Jul 29, 2023 at 8:29 AM Alejandro Colomar <alx@kernel.org> wrote:
>> I lied.  I should have said that it writes what is safe to write, and
>> then uses a somewhat "safer" version of undefined behavior (compared
>> to other string copying functions).  The standard differentiates
>> "bounded UB", which doesn't perform out-of-bounds stores, from
>> "critical UB", which performs them.  In usual jargon, UB is UB, and
>> there's no mild form of UB; however, the standard prescribes a bounded
>> form of UB.  However, I'm not sure compilers --and specifically GCC--
>> follow such a prescription of bounded UB, so it's better to consider
>> all UB to be critical UB, just to fall on the safe side.
>
>Do you have a source for this? As far as I am aware, the standards have
>always followed the "UB is UB" philosophy, which is why standards-oriented
>people keep trying to reiterate it. I've never heard of anything like
>"bounded UB" vs. "critical UB". C17 draft N2176 provides no such
>distinction in its definition:

Quoth Alejandro Colomar:
>References:
>
><https://port70.net/~nsz/c/c11/n1570.html#L.2>

Looks like a reference to me.

Yes, UB is UB.  The optional Annex L on Analyzability does define 
bounded and unbounded UB.  No, you don’t care about them.  Yes, 
that is standard terminology.  No, your implementation doesn’t 
define __STDC_ANALYZABLE__.  Yes, that terminology can be useful.
