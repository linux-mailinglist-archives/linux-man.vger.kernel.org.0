Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93FCB4011DE
	for <lists+linux-man@lfdr.de>; Mon,  6 Sep 2021 00:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238331AbhIEVn4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 17:43:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235179AbhIEVn4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 17:43:56 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 537B1C061575
        for <linux-man@vger.kernel.org>; Sun,  5 Sep 2021 14:42:51 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id b6so6830210wrh.10
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 14:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=74CS0YCCUTu7qgilJBgn81o+yxg8BzZ5f2ep7aEzxMI=;
        b=LNeNkqUhjg46n94v9x81CcXQs/nyvW8O+scFBq1Z1JPS/tsZP4RhFPVwFw3Q2uBSrK
         IOrqMaqmxe7YISr56NAm7Jr1kLSIMO2lxNIQ+NnspiG1ZRKPL2p1TH2291W4Gt8kZ3mL
         8/1J1HG7UWKdLX62C95PvcXXCArTCmLEL8SQ9inCdlyZqJZblPy5SrGfA3n/HR9dPZmP
         MSVaJxZc/MQL+1NhNevjnhlruVe0BiMqbQdyr2Lu8QB1tBQWlkLiEj92JF/CZnWDiw5C
         m1pHD+Y35Y323+3grcld2J3LnX0kS1UTePxZuS4SKlrrYffi1sehEi8+Si9yB18ot4v5
         rWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=74CS0YCCUTu7qgilJBgn81o+yxg8BzZ5f2ep7aEzxMI=;
        b=dyDbcimwQX7XZvxzV7PU8Fitn8i0Pp8pgWFcQ5vJRAQ3DT7o4pH6wBQC1VB2BOR7s9
         EfHLdA8cxBU3iG6hUIP+NLdgbdd1C0+KbypQWhQWFr07MPfyZTxVeZO6wW5hnC9qOe2I
         y9J7+hewNCkypLZV4Kn0ngmPXIuXZ/oyvPa86KW7dX6TN7h7FG/3NSSIXCpkXFzz9XwR
         NMGdN5YtFp8EawQEWC8GFtDoiJLo2pz6WiJUpNiqiJFyc+qf3Ee3yjMN9LojZmoQh5/Q
         ixEGRYgiKtIcVEHALoDcerVeL+8eAhDfsVZ9QQsSC+UEQJTiCcC29TCfWW7Vsqj3mYvp
         b7Og==
X-Gm-Message-State: AOAM532JZwU9d6jdrx58Hw5C7yGEhufhML8i/4wqh8O1lqfe10nr2e+F
        A9kS89qz5QD88048mT8XYpY=
X-Google-Smtp-Source: ABdhPJyMzRXu6WTwEov+Xx9ijn1awgCJ6y3oMNq8BygaCCrt7rRT1p5+z1/eTwb58dRLzwlXu/iyHw==
X-Received: by 2002:adf:e509:: with SMTP id j9mr9950325wrm.320.1630878169122;
        Sun, 05 Sep 2021 14:42:49 -0700 (PDT)
Received: from [10.8.0.18] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id 129sm5456363wmz.26.2021.09.05.14.42.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Sep 2021 14:42:48 -0700 (PDT)
Subject: Re: [RFC v3 3/9] Many pages: [GPL-2.0-or-later] Use SPDX markings
To:     Richard Fontana <rfontana@redhat.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>
References: <20210905132542.245236-1-alx.manpages@gmail.com>
 <20210905132542.245236-4-alx.manpages@gmail.com>
 <CAC1cPGykb3KzE6OnP+KB2qxSZ_c3hDCxy4g73wGCw+xcOEm31A@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <bcbb9fe9-e6c5-7ac6-740c-271b92c0c52b@gmail.com>
Date:   Sun, 5 Sep 2021 23:42:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAC1cPGykb3KzE6OnP+KB2qxSZ_c3hDCxy4g73wGCw+xcOEm31A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Richard,

On 9/5/21 11:21 PM, Richard Fontana wrote:
> On Sun, Sep 5, 2021 at 9:25 AM Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>
> 
>> -.\" The GNU General Public License's references to "object code"
>> -.\" and "executables" are to be interpreted as the output of any
>> -.\" document formatting or typesetting system, including
>> -.\" intermediate and printed output.
> 
> Shouldn't this statement be retained? It provides a useful gloss on
> interpretation of the GPL.

Yes, it should.
We could add a man-pages-object-code-note or something like that.
I'll open a PR in the SPDX license-list-XML project for that.


Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
