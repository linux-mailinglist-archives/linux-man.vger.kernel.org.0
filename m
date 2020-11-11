Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49C3F2AF36A
	for <lists+linux-man@lfdr.de>; Wed, 11 Nov 2020 15:22:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726207AbgKKOWd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Nov 2020 09:22:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725912AbgKKOWd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Nov 2020 09:22:33 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC361C0613D1
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 06:22:31 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id j7so2717679wrp.3
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 06:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=DvfbnbNmWMVS4qKu0/SIT8inQWqHytzCEd0fAn53S6s=;
        b=X7vPWL6hPQaUxKleHE29cCFK4Uzi4gEkHDOXjXtHxWIAbqe4gr/c0M+WmLDTOVok0m
         dURsLTVQUgpTaNeVz1ln1DwfBpqZXVSGX6g5pAjsIxdxi7gphjSZ0twwvulC1FWwzIM3
         CeDn/jN+wx+2xT4SU4Z96nvs7rcdHeGhFOh/TULIbT8uWQpS1J+8UkSBp4flfEiPaPY3
         6w1OoYxYnMJYnU/WB2c+vr67j03EOe5k3WeRPrrb4JTsTcf6Q8Ah2oke2DKxskTKv1qM
         d621ezOWOFBSy5cf+EJCrl+xQdtyQcCafaRw40KM74Pz43HCjkIayMkj8+RdfRhzh4F/
         zBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=DvfbnbNmWMVS4qKu0/SIT8inQWqHytzCEd0fAn53S6s=;
        b=W6ZWtZHP8h8YmqKsWmJBEhJxG1dAw9yeyjkVPlSCPrvaUPNCbPPJo+1TugQVZPv+1E
         6Q7Yfx2BaUtkgFqYgOpI4NWQHnMLfGvoP56XkiwzwGCM5QDdkGniJcNa02yktSu7xTmT
         I+ZfSQ6E3/mClcp+TwP+SeblG1v0LtRJNUKXLziU0MQXZ4+YBO2I6WUT39xvfDOBqaRz
         5qSjMhIo71llzdVlDILGjk4tnEXT03DrW/G7jjmgWfM+jAkQqB3Qu+iIxpQrO0cexlMw
         cqpyOS0ooRwFR7EWCofKTay1ehr21AC8oShW5Lt8IRk23l9M8z7N9hM+odrRSpnUiOXy
         L+Ng==
X-Gm-Message-State: AOAM532y7dY2lWopkpT4leLGye3Fz45ejsDEwBJeqTGU7jO7TFh/HRQt
        BkuahIpRW5ZoRIgwcvKYHN8=
X-Google-Smtp-Source: ABdhPJxmMGFXRf3Dcymy3rnxLOkikMOb/LDqnj5Ol8LcjpzY3moe7sqVfpmpsas/S9RQWsWybc8dwg==
X-Received: by 2002:adf:f88c:: with SMTP id u12mr21656119wrp.209.1605104549400;
        Wed, 11 Nov 2020 06:22:29 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id x6sm2895404wmc.48.2020.11.11.06.22.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 06:22:28 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, colomar.6.4.3@gmail.com
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: .RS
Message-ID: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
Date:   Wed, 11 Nov 2020 15:22:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

We already talked about something similar some time ago.

I see [.RS 4] and [.RS +4n] used in the man pages.
And there are also [.in +4n] and I think I've also seen [.in 4].
Is there any difference between [+4n] and a simple [4]?
Which is the preferred one?

And BTW, does [.RS] do anything different than [.in]?

I guess the code implementing those macros is written somewhere.
Where can I have a look at that code to see it myself?

Thanks,

Alex
