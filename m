Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C54687E5855
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 15:07:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232258AbjKHOHP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 09:07:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231676AbjKHOHP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 09:07:15 -0500
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21E66199E
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 06:07:13 -0800 (PST)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id CFBA55C067F;
        Wed,  8 Nov 2023 09:07:09 -0500 (EST)
Received: from imap45 ([10.202.2.95])
  by compute5.internal (MEProxy); Wed, 08 Nov 2023 09:07:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
        cc:content-type:content-type:date:date:from:from:in-reply-to
        :in-reply-to:message-id:mime-version:references:reply-to:sender
        :subject:subject:to:to; s=fm2; t=1699452429; x=1699538829; bh=1k
        s1mjzUWEIew5PJ5yc3nia6IY4vH5y5zE3p374vj04=; b=L35uD+Drf6FsRJUbz2
        fBmQrUSSoUDov1ccxqJN7eGOWTKByyN/b31+67YSYBOaTidmmeW6sGpnGcCXA/bW
        8sOjHtGafIcCM+LHmADccY4kIlTjVArkcpjJHXuGssekE0tD4RL6g5QuR4/wj44H
        GoGBzCiP0VAXB23ErYNWX97jkPHdjyPUtw+4mvjuwn6W9IBBxNTkgU0osbs07RdG
        kKLq9b6hw5aacdklJ/RXekj0D/NefFseM2PpuVH3ImuH+sar8haSwR2ApyRxJzpw
        qXplYDkjTIRe1frfIW0uwgaaQXkNcy7nm6/OWFZG04lYDxG/MalQvJfaqChEHKmS
        fTeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:content-type:date:date
        :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm3; t=1699452429; x=1699538829; bh=1ks1mjzUWEIew
        5PJ5yc3nia6IY4vH5y5zE3p374vj04=; b=Ko1RhqUIRhjRhXbFzlUKu8LzKeQ+G
        /4vwBw9HVMPtIWQAg8dJAeOjl69scnURU16idJjOifp44XrzSa6ovY6gaMaNVTXb
        wRuNmDoCEC0YDVCdcQ7Bf572eD8ZbwKEVKZ8ubiWmJbGEhkeBgmN1njkzp8vOgiv
        f3mWLZ6Uok3SmdCBJk2xwcZPbSar3eDwyj9+HIwL/S0HV/iE7QbrA01PoyEmov3d
        7GJTDNkrVmA2/TkX6Us3IdDaTkwZpDtJaWf39uDpFi+IOg2JMP5N6IYpS+lu0Cla
        Sv564OZG9LF4Z/AWgfh1vtIn19xhQaY2rFaqG3Rjr+fX2EdqmeKU0ICYQ==
X-ME-Sender: <xms:DZZLZRkvkx4e0hInj7WSFxhCJJSJWhe1Gze5ilq6XMIsR1nFppUdmw>
    <xme:DZZLZc2f_aFXgtdRPYucioPe3StaNP__RUeGzcoVKZL8Ziz7MaLGcSgHYZT0Kx0-Q
    MaSGOtUINjSK4d4yOA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudduledgiedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdgkrggt
    khcuhggvihhnsggvrhhgfdcuoeiirggtkhesohiflhhfohhlihhordhorhhgqeenucggtf
    frrghtthgvrhhnpefhuefhveeuffetfffgjeetgfekkeehfedtfeelgfehffffveehkeel
    fefgheffudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpeiirggtkhesohiflhhfohhlihhordhorhhg
X-ME-Proxy: <xmx:DZZLZXqQ6-QjE4JEHFKjihWw5YSZgeLbamazOwGxfz-AhOIGaUIqNA>
    <xmx:DZZLZRmMdV3C-dorpvN52ph93DsyQ2OO3XhCs4H8ft8LH6AHKAzPRg>
    <xmx:DZZLZf3gOnisPVePGlMY-ne1N6Uuo97w_WsSvoQJxW9mcP8m8SP83Q>
    <xmx:DZZLZY-hHvDmBivyiqLiXSHOSkhzwhnKzRmehcHCQwF3OYLxNetVkQ>
Feedback-ID: i876146a2:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id F3754272007B; Wed,  8 Nov 2023 09:07:08 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1108-g3a29173c6d-fm-20231031.005-g3a29173c
MIME-Version: 1.0
Message-Id: <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
In-Reply-To: <ZUtaH35V3koxTSL0@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan> <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
Date:   Wed, 08 Nov 2023 09:06:48 -0500
From:   "Zack Weinberg" <zack@owlfolio.org>
To:     "Alejandro Colomar" <alx@kernel.org>,
        "GNU libc development" <libc-alpha@sourceware.org>,
        "Jonny Grant" <jg@jguk.org>,
        'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>> If you ask me, I'd not mark libc functions as deprecated without some
>> kind of consesnsus from the libc maintainers too.
...
> Okay, let's ask them.
...
> Hi glibc developers,
>
> strncpy(3)
...

Speaking only for myself, I would be very reluctant to declare any standardized function "deprecated" by glibc unless the relevant standards have also made that declaration. This goes double for anything that was in C89.

Also speaking only for myself, the Linux manpages are welcome to discourage the use of any function that you feel is not a wise choice for new programs, but the word "deprecated" should be reserved for cases where there really has been a declaration of deprecation by us and/or the standards. The word "obsolete" should also be used very cautiously; it's broader, but I personally would only use it in situations where there is a direct replacement (e.g. sigaction replaces signal, strsep replaces strtok and strtok_r).

In the specific cases we're discussing: I would definitely like to see a BUGS or NOTES section in the strncpy(3) manpage, warning people that it's probably not what they want and recommending use of strlen+memcpy instead. I don't know enough about the utmp(x) situation to have a strong opinion, but I do think the manpages need to be very clear that this particular proposed replacement for utmp(x) is Linux-specific and still somewhat experimental.

zw
