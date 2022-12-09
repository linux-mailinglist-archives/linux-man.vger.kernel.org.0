Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B5C0648A29
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 22:41:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229894AbiLIVlj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 16:41:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbiLIVli (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 16:41:38 -0500
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54B7593A40
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 13:41:36 -0800 (PST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id A1B525C00C0;
        Fri,  9 Dec 2022 16:41:35 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Fri, 09 Dec 2022 16:41:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
        cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm1; t=1670622095; x=
        1670708495; bh=0SGDR1ALuGESyZnn5K0PbOdrzQBDoHzvDgvWLjIXras=; b=I
        AGJbQxY+PTmD8ZctExTg3KFasQazvZcQf/VvjmzvGo9Q84LF35rGIr1eQy2/4Qh4
        ybvE0R9zK2s3v1WG5epFFkMv/6KvVMRP6tr51Sum4mo6UpCxXTgZcv526pztvQC6
        6+8rxcqd0K516mySsATNP/ZyQDDs9jUK4QDoi7uV5VrKtD8U1wsUYbGjsjkYGxUb
        rml1MpC5qEwLgcLfGBxhUDUJFuFTxU6m5IclhDgVooBSQhGr5N+TuF3/hxxktyIu
        qvG2er2REZAZu0MXVFGuvyxeLbeAAROEHgLcNKKAaVlefYrDCVXVf0oeL94xOsWQ
        F8PWcdkHK6QO+a2yDA1YA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:date:feedback-id:feedback-id:from:from:in-reply-to
        :in-reply-to:message-id:mime-version:references:reply-to:sender
        :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
        :x-me-sender:x-sasl-enc; s=fm2; t=1670622095; x=1670708495; bh=0
        SGDR1ALuGESyZnn5K0PbOdrzQBDoHzvDgvWLjIXras=; b=JmMTVDvlikNWIEYQ1
        AR3XhLlsCF56PxuuAgK5/9Gv3MGNe9H5fTrZeI/QhfyUhT5EX5+HqumNn7sAtBrC
        YQWpkljUoo7b1v5WXQAZ1a4qEd54hpi1yDpfgA930dqjumhiquminrUlPDRTQA4A
        FRCpneJXdOKyN7+NrJPMG6W1iBKSsQrQNLUhtfA72UesZ9/T/i/igDYtZK8v5q73
        +ZzyzKvKt10M+fRx4qOVwfZDHoeRUkpWk73vhTK35h00ngtWS4RVoGvodjggd5kI
        rnzdoyQfUh0xn3GpnoLqjxsOxpb1xTMkQhlKs86XBr5mBvoYCrO6M8OFJxjtQ+On
        8mMjw==
X-ME-Sender: <xms:j6uTY6GS6E4WLcW6fIau5Wk7ueZvlNvCyrPKzDeoSBHNPMYNytAjqw>
    <xme:j6uTY7UwJZ8orIH-qXCCn5Dnr2OqbL2Qg5jP0fUhlud5mD090Q0rwpWK6dmJUsG_o
    bblw2R_-IMWR2V2ARw>
X-ME-Received: <xmr:j6uTY0Kz1ABsPUyKV03MHyeptQaq808Y0_N3kjbEiyrxYZrXpiy627qd8_sscFOM_FFKKl6SPLb68q1Nwmt7cQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvddvgdduhedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfuvfhfhfgjtgfgsehtke
    ertddtfeejnecuhfhrohhmpegkrggtkhcuhggvihhnsggvrhhguceoiigrtghksehofihl
    fhholhhiohdrohhrgheqnecuggftrfgrthhtvghrnhepkeekffelkeefvddvtdeutdeihe
    dugeeukeekgfejudehfffgheevfeevueehvdegnecuvehluhhsthgvrhfuihiivgeptden
    ucfrrghrrghmpehmrghilhhfrhhomhepiigrtghksehofihlfhholhhiohdrohhrgh
X-ME-Proxy: <xmx:j6uTY0ELWTWAP3DsZwRcDWgPVf7hgsZSFn57Q6_aeEFLBOByZ859cA>
    <xmx:j6uTYwX1NbGhNNG-W_LsjiyGko_UAUZbmjAHOJCJx8wfkLXJNLjUsw>
    <xmx:j6uTY3NtnqVU0Zc8cZkDGliHf8B_VfCZSoH4QRd1m-h1XcMXqyGiHQ>
    <xmx:j6uTY5c2mEVDAy3r67YcgXDrWKmfGXzjLkgAR5wwJxNdKprFIJQBtA>
Feedback-ID: i876146a2:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 Dec 2022 16:41:35 -0500 (EST)
Message-ID: <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
Date:   Fri, 9 Dec 2022 16:41:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-US
To:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
From:   Zack Weinberg <zack@owlfolio.org>
In-Reply-To: <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2022-12-09 2:33 PM, Alejandro Colomar via Libc-alpha wrote:
>> Technically, the behavior is undefined if the result of the conversion 
>> cannot be represented in the object being assigned to by scanf.  (In 
>> the case of glibc, that probably results in either the integer object 
>> being set to a truncated version of the input integer, or the integer 
>> object being set to a truncated version of LONG_MIN or LONG_MAX, 
>> depending on the actual number.)
> 
> Hmm, UB.  Under UB, anything can change, so error reporting is already 
> unreliable.  If EOF+ERANGE can _only_ happen under UB, I'd rather remove 
> the paragraph.  Please confirm.
			
BUGS

The `scanf` functions have undefined behavior if numeric input 
overflows.  This means it is *impossible* to detect malformed input 
reliably using these functions.

Many input specifications (e.g. `%s`, `%[^\n]`) read a sequence of 
characters into a destination buffer whose size is unspecified; any use 
of such specifications renders `scanf` every bit as dangerous as `gets`.

Best practice is not to use any of these functions at all.

zw (no, this is not a joke)

