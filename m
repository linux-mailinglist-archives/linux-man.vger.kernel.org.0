Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86F11407D73
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 15:06:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235178AbhILNHq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 09:07:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235168AbhILNHp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 09:07:45 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFD28C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 06:06:25 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id w29so9448917wra.8
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 06:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=H1X4JaxBOd8I6r8U+ea8VCxivI/rdr/sJCGGEDPxno4=;
        b=nTREvlEEB5fp/P0rrdKhWpXTmGT+PF9C+u5uTYz9/2pnyKK2r1fQpeKSzwQNpB/zua
         jsrYsdYB+YemYvrvrZmUk14lO2e/MDaKjyzwI9bh4TcqXW/nyIAnEj3W6JXf2tGQwcA0
         CY9e3ItTtDPC5BWe7owAjaA+G9cPR0od6axeSeXUhZ9Z7X6qwyftcn8/lgJl3M5X0DWD
         9bz3v5NPHrF+dzLzUeT/1lxP1PvvDrkyUBBuusZH0axchlcHvLQTcIQvz4/cDMGurLsy
         ZX3u90tA9zQmdT38JM1rm2o1pPasORyDQ0VeC/V65QDdgEe2i8cKxkDvXyIk1RRb2ZS9
         qCnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=H1X4JaxBOd8I6r8U+ea8VCxivI/rdr/sJCGGEDPxno4=;
        b=oJwxKUqAqoTSAryYnH9Dy+MqWYTUrORBtGmCrM5nSKTimisGFP3gpa8MrsV6lmJ3Lv
         WKhAuY6iKBh8zOpj5iSQ6o5J0Z5ZTEpXkiR4cuLlIScBrRe9kM2Vyi/pHaWigUc0xDJu
         n08RhMq9yPbwvTBfGaClktw1jyfjxc8GCBDFZ6/GG2uK5eBZ2xmzQS6+UnDzR6LPHJIB
         NQg8S8CekzCDcuj/sn1j8DNrpAt6pgOQNX1BaVOiB42QXEcf34K29e7/IEGnPuGdSLRP
         JU1/lRMljvJrk2Uy0l+r03MlhzszEFic7/2TJA9kgAAshJqHDKhjQoYSAi0GCZ3tpFYl
         4feA==
X-Gm-Message-State: AOAM5320b0wxFww/MfUF0XHHZQnV0MVcwUOvuNLAiomHNh5KRHBXNHly
        h9JqIL+q2xqwdXGBmShfBAo=
X-Google-Smtp-Source: ABdhPJwY2mwpK+8UIG7vd0bZLc8Xg4HBjqG1YT9B7TyTuOcPvO7PJDmJ6S3THDOgQ23CTKxZi3sRUQ==
X-Received: by 2002:a5d:6486:: with SMTP id o6mr7287931wri.193.1631451984458;
        Sun, 12 Sep 2021 06:06:24 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id j19sm4385521wra.92.2021.09.12.06.06.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Sep 2021 06:06:24 -0700 (PDT)
Subject: Re: AW: .ad l/.ad b
To:     Oliver Corff <oliver.corff@email.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff@gnu.org
References: <d95326e0-7b0c-b057-3412-f60264fe1ad9@gmail.com>
 <20210912113338.5181521.88860.87504@email.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <1b64c3e0-2234-5a71-3c8d-14ccdbe0b57b@gmail.com>
Date:   Sun, 12 Sep 2021 15:06:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210912113338.5181521.88860.87504@email.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Oliver,

On 9/12/21 1:33 PM, Oliver Corff wrote:
> Hi,
> 
> 
> .ad Begin line adjustment for output lines in current
> adjust mode.
> .ad c Start line adjustment in mode c (c=l,r,c,b,n).
> 
> That looks like left, right, centered, block and neutral?
> 
> Just my uninformed guess, and I am not at all sure about my impromptu Interpretation of 'n'.

Thanks, then it seems that we don't need it (otherwise we would have 
been using it in all pages already).

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
