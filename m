Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C863F4D8DA6
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 21:00:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244809AbiCNUBR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 16:01:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236350AbiCNUBQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 16:01:16 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40DEC10FC7
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 13:00:05 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id l10so10007429wmb.0
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 13:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:references:in-reply-to:content-transfer-encoding;
        bh=W1D0/odec4VFwSi77QKujENNBDmUsoJ8AcZO49RJfKU=;
        b=dANVu+qXfkRaLjTO05fFsht5YhU2eh9Bk0HmEX8jF9MZcR2xNjYxqciTLvGJm38nBT
         BlHgkJQvwi9lTLhM3Jkx0nkrf3Y/udUl3TXIIncKRuDi8ZjBKLdIi4QY4BqUG29EBcr2
         rtgg+AxaFURPLLTf6iVfA6irhioTsBb/SHYU0aDGb128VPDLhzNsSKXi0qnK3r2zgZx2
         bKn0QKKYTlS+riBOaZJZv6t/7gGFUtrDy8JSDXIws1Vu/j0d7pRZF3opnzcLVPSs2ycN
         IOI6m7Jaolm2oNhW3pO0J8ipL10/eiRry9wRqxykQPTAJHvK5axYSjFHIF5JakPJPtrH
         FFXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:references:in-reply-to
         :content-transfer-encoding;
        bh=W1D0/odec4VFwSi77QKujENNBDmUsoJ8AcZO49RJfKU=;
        b=V6pnzWh+LSbGoPlITZmGvKU5M28jfhERsYH5VzAeB+0llHYuA8Iww96QVrDdHya7iV
         1jxG7qHAdTYZ6cjDnkqBfYhQ4sGeqBOFlfNmrziAgm4zYri9h+a3Hnq0d76HYcN2Jmsz
         8lijWfYQKkQA8uY+Hp9jOnQSFym81SHXPD+z577bUGDYtW4hErvjowfOHsRmJ/cdxStZ
         aYksRGaRVBuWvJfmnBi+LVL8tBbGSwXm2mjUDE6G1DK1hm+/kCz/nh0Z8qUuERyg4GIH
         isNcXDZV0RSiOS5m0PkheLkIAaILQXimI1EDN5xDtOZQlR34/4T52JEPFKVJm13QOOMU
         by9w==
X-Gm-Message-State: AOAM531bYm69qU/CB0DGlLfsnSl4yvgd9dJ6SsOTN7EYuxkZOAf+C7x2
        n2/Ijhn7Z0llqdZ4Hob0fmDsRBmtQlz0HwH2
X-Google-Smtp-Source: ABdhPJz3s/3wZA5W2n9Z+732coDtvBXqBZTScDdk6ayk0X21rbLfJLxaUicCKvPsJwQ8c6cUGZx/Fg==
X-Received: by 2002:a05:600c:214a:b0:385:9c42:848 with SMTP id v10-20020a05600c214a00b003859c420848mr623747wml.176.1647288003767;
        Mon, 14 Mar 2022 13:00:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k13-20020a7bc40d000000b00381890032dfsm413648wmi.1.2022.03.14.13.00.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 13:00:03 -0700 (PDT)
Message-ID: <36aefd25-3416-23cb-61ce-af511ed4257a@gmail.com>
Date:   Mon, 14 Mar 2022 21:00:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH] fix descriptions for AT_NO_AUTOMOUNT
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?Q?P=c3=a1draig_Brady?= <P@draigBrady.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <ed3ac15c-9e92-73b7-b7f9-8281488e8778@draigBrady.com>
 <3a4c9f63-0203-a810-6113-5c77a16e3690@cs.ucla.edu>
 <95140173-2913-e377-5824-8a569ac78b5b@draigBrady.com>
 <5c608ef7-f279-6afc-37f5-6a50442a3143@cs.ucla.edu>
 <bdd68a31-ef3a-f022-bc72-c051690cee59@draigBrady.com>
 <6645f678-4293-4692-8472-eee0bacee63f@cs.ucla.edu>
 <670898ee-3b1c-97cd-290c-b6d91bfdaa07@draigBrady.com>
 <5612cf59-a6da-6974-6a97-e406a4f4d557@cs.ucla.edu> <87bkyemetm.fsf@igel.home>
 <9293ccdd-ca30-81b3-2042-c91327da6b28@draigBrady.com>
 <dad1522f-21ee-620e-8fcf-b290bbb9aba5@gmail.com>
 <4a4ad936-bb1c-328c-dd43-95f4abbb905c@draigBrady.com>
 <9488e311-ab35-96ee-7791-ec65fa6fe948@gmail.com>
In-Reply-To: <9488e311-ab35-96ee-7791-ec65fa6fe948@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pádraig,

On 3/14/22 20:56, Alejandro Colomar (man-pages) wrote:
> On 3/14/22 19:02, Pádraig Brady wrote:
>> Subject: [PATCH] fix descriptions for AT_NO_AUTOMOUNT

Oh, and I forgot:
Please fix the subject according to the following guidelines:

<https://www.kernel.org/doc/man-pages/patches.html>

TL;DR:

foo.2, bar.3: Fix descriptions for AT_NO_AUTOMOUNT

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
