Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C73F3582303
	for <lists+linux-man@lfdr.de>; Wed, 27 Jul 2022 11:24:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229961AbiG0JYA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Jul 2022 05:24:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbiG0JX7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Jul 2022 05:23:59 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A62E286D0
        for <linux-man@vger.kernel.org>; Wed, 27 Jul 2022 02:23:57 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id j7so1433506wrh.3
        for <linux-man@vger.kernel.org>; Wed, 27 Jul 2022 02:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=2620TpofcCqdfX2FE98aQWamEBaXuR/c8KUS73u4TPs=;
        b=PIeOt4fzd73K8ZhnfLU698kHpVWSMwmJNLaENw7HJYqJB8mD+Nejm5Di3yEEU1Hz/Y
         GL53b4yQHZY6EaWukTf+2s22CX3PyKz0U52Y3L9cFQ818RhPv/lz7ZL9d1eBftRjih8S
         +VrcE1nLyv0l+Uo+/fguO/SzzGYXXeZeSZgHyouqMlV0HpeiZB6+SskLj73taggqoan6
         IXlYzeA9rFoc8w36UXZ8pbO0tOKxsC/mduYvAN892hMTceFSITFDPDXkhNicVvIIW6JK
         7e+tsUgqg8KQ0PIP2RLSqwgjmBqgskDZtHaMMK1PibRB7fPBzQA6IoW0z56yp/zAXiK/
         VAZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=2620TpofcCqdfX2FE98aQWamEBaXuR/c8KUS73u4TPs=;
        b=wDVLocSwRWqkx+r86GXrORDATKYdULV4NdjUWXHPPJrjKau7TmHFHYRNnxiW7O4fQe
         OVB9gBNaPqJ5lHRWnVtVlzp5l1mcGQrAQuUWs+Kr3smO8JI+/gO8KWHwqqWGn5TJVIer
         8az9k1IzRmQQus/x2TTkZD+HhgOe3XWGKoL7mHU24wTFTf6RVS6QkRK5uRgHPVVIUmG6
         C1gsU6Ei0fhFp/7gzbSVxZI1VZXdkVrPIjkFL9Xe4Q2O93QDYbjBzG7lSal9jGgTMCwg
         eAwYzrNv7fiq+4xO4uueAA2xWF9b+Xt19SXPUI0VhxZ+KqK0StjSRpVRz2mbr1aPU7x7
         zDtg==
X-Gm-Message-State: AJIora8uswO9tVfI/9QgeCLu77EihH4iSBnlYy6xhUoSEW6KZ2/qI156
        ZZelS+crb+mLETzAcP1EaeJiGLSvKIM=
X-Google-Smtp-Source: AGRyM1ufIPL/ZMaVjjegZAsSXLW+0qRq1XAXvoWRsnFQ6NmJ9GIpVE+aqg7DvhPAqdl3yzp9eUqORQ==
X-Received: by 2002:a5d:60d1:0:b0:21e:4731:ec55 with SMTP id x17-20020a5d60d1000000b0021e4731ec55mr13054630wrt.677.1658913835817;
        Wed, 27 Jul 2022 02:23:55 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p6-20020a1c5446000000b003a2f96935c0sm1997336wmi.9.2022.07.27.02.23.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 02:23:55 -0700 (PDT)
Message-ID: <95d31ab9-fdc7-2629-0f9c-b2ed30722e30@gmail.com>
Date:   Wed, 27 Jul 2022 11:23:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] man-pages.7: Document CAVEATS section
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org
References: <20220726120817.100462-1-alx.manpages@gmail.com>
 <Yt/yMJuhXd+jH3sp@asta-kit.de>
 <7effe1a8-c1b4-5542-932a-7edf436036ce@gmail.com>
 <YuAKPTxrbJ2XuqJN@asta-kit.de>
 <f2c85cee-9ef0-eaad-d1b4-21352a324c9b@gmail.com>
 <YuEB5INpOo+/UqmG@asta-kit.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <YuEB5INpOo+/UqmG@asta-kit.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ingo,

On 7/27/22 11:14, Ingo Schwarze wrote:
> Hi Alejandro,
> 
> Alejandro Colomar wrote on Tue, Jul 26, 2022 at 09:02:40PM +0200:
> 
>> Thanks for the investigation.  Committed, with a similar commit message
>> (changing references to man(7) by "manual pages", since I consider
>> mdoc(7) pages as relevant in this regard).
> 
> Your commit cb828372 looks good, thanks!
> 
> The following is certainly not a big deal, just mentioning it because
> chances are this may not have been the last time i contributed
> something to your project.

I hope it's not the last :)

> 
> In commit histories, release notes and the like, i prefer being
> credited as Ingo Schwarze <schwarze@openbsd.org> rathen than
> <schwarze@usta.de>.  The reason is that in a hundred years from
> now, i expect people will still know what openbsd.org is, but it
> seems rather unlikely they would still know what usta.de was.
> 
> You may wonder why i rarely use @openbsd.org in my From: headers.
> The reason is that i want to avoid the wrong impression that all my
> mails were official statements of the OpenBSD project.  While many
> opinions i voice might also be shared by some other OpenBSD developers,
> some clearly are not.  And disclaimers in a signature are annoying.
> There is less risk that people think i'm speaking for the UStA of
> the University of Karlsruhe.  :-)
> 
> Probably i should try to remember saying "if you credit me,
> please use this address: ..." when a commit is obviously imminent.
> I often forget because the vast majority of messages that credit me
> are inside OpenBSD, and there it goes without saying.

Sure, I'll try to remember.

Cheers,

Alex

> 
> Yours,
>    Ingo

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
