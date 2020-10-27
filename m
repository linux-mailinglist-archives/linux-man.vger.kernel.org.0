Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18F0229A995
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 11:27:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898093AbgJ0K1E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 06:27:04 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:50311 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898088AbgJ0K1E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 06:27:04 -0400
Received: by mail-wm1-f67.google.com with SMTP id 13so838615wmf.0
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 03:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=E0IvkJpeb17WVVy1YAWAp3rH+0DoT1wqD/wM6BAm3Fs=;
        b=lQ9Y+xCqB2lGSWPDXKif9SN84cWw9/qiTzPtw6PlaDK+TF2XRr2WP8Kl1m5OGnTqaT
         pcoNEcIlLk2tb6D/YoRchfPQsWan7s0umF8EW8kM5IjDV7POJ8qkYho7DehZOSE/ml3S
         esHLt++QBbjrY56iYc2/KqwV6LckhTcSt/bfMJ/Pi1UfaB4d0UbE99ijaLetwmTuXx1i
         mAFn4eflL+qrmj7+wrKPbeSpbm7XVCipOxI+qN1d0YxhlKLxbG4yEaGOdv2PezeRqizc
         D2jyjC3IxRp8m0z4F/MZD06OooAqjreBamrW8RjZo2uzZTH1PgI0FEkuB/x6bfedYmDp
         L3XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=E0IvkJpeb17WVVy1YAWAp3rH+0DoT1wqD/wM6BAm3Fs=;
        b=Auv7F3NZWaTTDpfuPSNz7y+B0urSosG4A+AWw6DQrVcm47u96fXo8mMz5q0Mb1Ksg+
         miE6cx5gt/2SRq+bpyWZZPJzL7qU73c7g5bG4BRBNBmcFVDqZpnGOIkbDeBdGX/EuoQD
         /mfMXAA9+7JaSEaYr8934QuIUvpHVVI22Zlvf0TtaOKsvVCtxEYoCYYmXcXeVzs71fdH
         SsSO+c+/2ntPVNwofdGuh4W49pUe8N5PCZYGl/b53N6aTiNesSVOE60dsn7jPXmaRcK1
         JK7NQPV8qFy/1LhjZg6AIeX/cg62dx1xk6Bez+AghEsj6IxFQPKBVq+zoyNiEMoQjY9L
         l2qg==
X-Gm-Message-State: AOAM532MZ3ru/PI5VjQp86MF1uRJ6CrVmt1T86JysF9YBbrFrhcbaw2x
        lfz3nes1+XcZuZHuhfTIPVKrdrrxLlU=
X-Google-Smtp-Source: ABdhPJyCwH0xaGUsxTQrw8VpS5lpwYkqdLnb2hNKGblFDoa19oQy2Nd21MnEWO12Dw0Hslk7Vbwx3w==
X-Received: by 2002:a05:600c:228b:: with SMTP id 11mr1965706wmf.147.1603794421986;
        Tue, 27 Oct 2020 03:27:01 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id i33sm1533243wri.79.2020.10.27.03.27.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 03:27:01 -0700 (PDT)
Subject: Re: [PATCH] system_data_types.7: srcfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20201026223450.28183-1-colomar.6.4.3@gmail.com>
 <0a104f3b-fdce-f094-7dee-966378b6f760@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <38963a74-d34e-03f3-06c2-60df7451327c@gmail.com>
Date:   Tue, 27 Oct 2020 11:27:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0a104f3b-fdce-f094-7dee-966378b6f760@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-10-27 06:54, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 10/26/20 11:34 PM, Alejandro Colomar wrote:
>> Remove comment specifying the layout of the page.
>>
>> The page has grown enough to document the layout by itself.
>> Anything that is not clear enough in the current layout
>> should follow documented conventions.
>>
>> This comment is not needed anymore.
> 
> I think there's still some value in retaining this comment!
> IMO, it's not completely obvious how each type should be
> described from simply reading the existing entries.


Okay.
I'll keep this patch in the 'rejected' branch,
and maybe some day I'll pick it again :)

> 
> If we retain the comment, the "Notes" piece could
> definitely be removed though.


I'm not sure what you mean about this.

Cheers,

Alex
