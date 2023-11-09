Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F9277E6C10
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 15:06:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234386AbjKIOGV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 09:06:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234489AbjKIOGQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 09:06:16 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 658BC30D8
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 06:06:13 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40906fc54fdso6632425e9.0
        for <linux-man@vger.kernel.org>; Thu, 09 Nov 2023 06:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699538772; x=1700143572; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=W2d0UbuvvA9kmvH0U+KVw+GEkubm3gTsK9BTJh2MpqQ=;
        b=UyBDOWOStswWcpfcJQi4mlYsnA9stLdmmE6cdEQFQTnvHsf1PZQakOthj1h17faOCR
         vbV8q9/sMk7KFpoQTDAgJdAbS/b+rtQESJhJf3Bcksj1Wx8ST2DvmkdDJpzyRXs/+BdS
         JeZFQMRaS0UlQdlkf9f9NK1GBb786X5JhLyYZ59+lEhnQjGqJMkLyQs7E8IwH8C92/tW
         kbu7LhcmzkkTlhmQPUwr8zXoF12bbQlxsFO+DIIqf9yLlj12X0GmAvcZI5Urvz3GmZts
         ol/Jb7N9zvXkW13MrhFjvGUK6IP27dQKGqeEt/toQBnv2iBG2mib+mPX64SSnKsGlGB8
         GWmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699538772; x=1700143572;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W2d0UbuvvA9kmvH0U+KVw+GEkubm3gTsK9BTJh2MpqQ=;
        b=OjKu4Y3EL1QBOu2ggREADUSNPUweQdET8VOc3P/37frN01F3mA5TbZJ0orNfoOk3R7
         yIQ2XNwDri14V9LrfKRNODaJA97AMrY2INJqKXru5qGoJxtVn3y67U7cLWzg9/2VfJoI
         qnar8WKBOQdNFSXc+lZl0psQYM2cfZmm4n27jTwWOWZaG1gdZp8Bh7UbAE5Ho0TDPVaP
         SoRcuSBT5wSjTCIZPH4gmSLAaXkMpbuwLF6RAmdju9xa+jvYVcQtedx/yD6Znuy0IGbL
         S/Hk7KvifWP/nhuklkklJ4f4nrCu8jPZZMneThHo/JzhHYIA8rNDJ+9at4KqT+HCB0Tx
         75wQ==
X-Gm-Message-State: AOJu0Ywp3LuJzOvLv86lA0YUbn9mo37AYL5qBUnKxc0kAni0YlrpsEBR
        bBqkSIwPybCzYZcuOVMidOOn6g==
X-Google-Smtp-Source: AGHT+IGlqBg68nyJohW746dEh1ksageFBNHh+qWpx4qoMfEhEhf2XWA2xXTWFPhoIJCwgOO9KJ9INA==
X-Received: by 2002:a05:600c:45c9:b0:405:40ab:7693 with SMTP id s9-20020a05600c45c900b0040540ab7693mr4470804wmo.31.1699538771895;
        Thu, 09 Nov 2023 06:06:11 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id o7-20020a05600c4fc700b004064ac107cfsm2215648wmq.39.2023.11.09.06.06.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 06:06:11 -0800 (PST)
Message-ID: <314f0ace-24b8-408c-86cc-40721d27bea5@jguk.org>
Date:   Thu, 9 Nov 2023 14:06:11 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From:   Jonny Grant <jg@jguk.org>
Subject: Re: catenate vs concatenate
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Paul Eggert <eggert@cs.ucla.edu>,
        Carlos O'Donell <carlos@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        'linux-man' <linux-man@vger.kernel.org>
References: <ZUpjI1AHNOMOjdFk@devuan> <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian> <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian> <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
 <ZUwn82bp6wHceMS1@debian> <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
 <ZUy9qNSzok2Dtf_N@debian>
Content-Language: en-GB
In-Reply-To: <ZUy9qNSzok2Dtf_N@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 09/11/2023 11:08, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Thu, Nov 09, 2023 at 10:13:24AM +0000, Jonny Grant wrote:
>> https://man7.org/linux/man-pages/man7/string_copying.7.html
>> Rather than "catenation", in my experience "concatenation" is the common term to explain what it does. There are quite a few on that page. Probably other man pages too.
> 
> Here's why:
> <https://lore.kernel.org/linux-man/CAKH6PiUrQzb7vRZxUs0742WnfaLpcUec0QfdJQJ5Di8LqFg+NA@mail.gmail.com/>
> 
> Douglas McIlroy wrote (Wed, 14 Dec 2022 11:22:05 -0500):
>>> concatenate
>>
>> We began fighting this pomposity before v7. There has only been
>> backsliding since..
>> "Catenate" is crisper, means the same thing, and concurs with the "cat" command.
>> I invite you to join the battle for simplicity.
> 
> Cheers,
> Alex
> 

Looks like it's already been discussed. Where a term is already in use, it's a question if to change the commonly used term. Technical documents seem to be mostly 'concatenate'. Looks like people have already decided on going with 'catenate'.
Kind regards
Jonny
