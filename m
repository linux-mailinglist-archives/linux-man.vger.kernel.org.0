Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56346267921
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 11:27:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725832AbgILJ1H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 05:27:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725857AbgILJ1B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 05:27:01 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0528C061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 02:27:00 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id z9so6861442wmk.1
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 02:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=M34ivtBKr1qwmmKLlAywVoLHm/kDO/cYPs7xBhflM80=;
        b=jpxna2CcqyyiqgHjyhWP4eXIokvtmJBNvBU9CUsQAJ/Qe7b3y3cyDIfliMa2B87N2p
         KQeHAyNbZn21JmzXBDMDnbjRkeuTWL3AOKy9efj7MPGnd171L1aFHV6O+Yxfc6X1HOUa
         6hIG8yvhHp8Ov8h66M+ai2RIEHMrWf4NrwBOQkayN15Jgkqy3CpBf0Nj1ycpxh2p43jB
         dXLudZhZ8AOVd7KVJiqKi7NSil88P6Fhb6OCOfGEgL25vTPDkJm5r76R1M7eKG8FufXr
         NPwRA3EevS4cuPk+DXi+suzF5RNViq7pxkEVgIWy+KgM2ZyiARyBOzU2o0Cgv79MjXpf
         aqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M34ivtBKr1qwmmKLlAywVoLHm/kDO/cYPs7xBhflM80=;
        b=E1HqjXRfkuCdNJaEeNNQxjKuk56PVlVvt1oYUnt1QKHYSewgkvRjDfHV3+MSfl5p2A
         cfu+csxiJ7LEmd5Hdf1yFaQTrh6MnJpNlgCshVTt8OlCuYPZ4T/h1jFJ7HnRHtkFqWc7
         R1/o3Wc8LyU6iFZsiihHiM+FweYaiFsA+6b/eNDVz9maBAKXbLkOeTNXFnlBaKUp7+wq
         Dr/ZsPF50YCorQ7UXtU1XKe1LUeauRkIVzZukHVAWZHIWKwe0u1oMYCNdOmyJyhIYegk
         tLiN3cUSj2t72ibAg4OcK2jeqA+q868xslkfojFo4cbosKSKq4HNHyshATP/CIfPrtw2
         nyYQ==
X-Gm-Message-State: AOAM531EL7I06L3Z6Nbx5m1IJY+jXczrE9hT7rfK8RZ9NzM7gH05UyxT
        ntE16DuNDLM/jz/3Iv98ZrU=
X-Google-Smtp-Source: ABdhPJyP0OlNztKcTA7Eymbs0tM8/ExVde1wtVC20Mv2fX5PLvHDV1dIqfJr6iwgX7NncO3vBnIzWQ==
X-Received: by 2002:a1c:2d85:: with SMTP id t127mr6115055wmt.22.1599902819181;
        Sat, 12 Sep 2020 02:26:59 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id b18sm9635028wrn.21.2020.09.12.02.26.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 02:26:58 -0700 (PDT)
Subject: Re: [IDEA] New pages for types: structs and typedfefs
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
 <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
Message-ID: <626635e0-0594-218b-14ff-3773a12498e1@gmail.com>
Date:   Sat, 12 Sep 2020 11:26:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-12 10:59, Alejandro Colomar wrote:
> Sure.  And for the structs, I'd allow:
> 
> 'man struct timespec'    (For simplicity)
> 'man struct-timespec'    (Similar to the git man pages)
> 'man timespec'           (For compatibility with libbsd)

Actually, the 3rd form might create collisions.  I'm not sure it's a 
good idea.

Alex
