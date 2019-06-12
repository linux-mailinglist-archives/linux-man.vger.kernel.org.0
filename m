Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D393C43161
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2019 23:14:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727233AbfFLVO2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Jun 2019 17:14:28 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:45293 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726599AbfFLVO1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Jun 2019 17:14:27 -0400
Received: by mail-ed1-f68.google.com with SMTP id a14so25922732edv.12
        for <linux-man@vger.kernel.org>; Wed, 12 Jun 2019 14:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1wtyF7jw4AGLsByS4Weity4PQCW+Drsu5XdJD2m8RsU=;
        b=q6mtpKGnP2LMIbDidt9K0Rh58PDutLpaI3tqsrPW9RtXKADr1smPuIt7s7qw5O0XfS
         +iyrvMusP77oX55Vgjw4Uws5gCbQTyyNkUUi4ZKbNh1fob+WqJjyp8btRBQ2F0Npd8Ly
         m71MrigHfdDjv5PzxzNupbIN1B2sUEEn5bH4DT10lT46ww0lXh8bZTmI0UW7zZtTdJYK
         s0j0MY/4QA26/S7edcB0dCsrSSPxzfFX6Bdq1NVCmJzOHeVmpvFdLDqTjgtXAxnOTCSZ
         B4A/9VzlwZ8C5iw1SJjt1ETY48uOtUTJxSWA/henxiPl5RzPqa7X3GO3U5cFY1+8VGr7
         GulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1wtyF7jw4AGLsByS4Weity4PQCW+Drsu5XdJD2m8RsU=;
        b=g6YbH/giSDvcmZe87RdpA4G8wXFP+LTEnqPv7ZB0vmhwPRmfyJII+0XTICFM72Nfmy
         aP0feyWLaednplpQ6XLh3YYijibNs7Hg1wJeVDrSbABwo0Ct0a9OXWU4gyKuE4HrEZBN
         VYkhiRB7IL3XSBV2ACse+ggXCzjSAhf/cluBESP2DO1vVaKpwm3rKK2PKodtGW+1PZ6s
         xBjlVztEJWtsIFQjO1t8wfLm9YOPpKUShfrH9h4zYCTHJUVUPXOBA8YMBsovmiLWMbAJ
         YT7NH53cmhW45LAXJr8AC5D014G+YWIyyWB52aAkIK40ci97XiFflmhU9/kMDvk8sGPL
         jaDA==
X-Gm-Message-State: APjAAAXWFBya7Ha6VnC0hTXhMuyn91td0/ASCTYQJl+tAV2S75Uf4nf5
        I5z7KBw6AfIXiELzSMNtOGkwg3T/Wj0=
X-Google-Smtp-Source: APXvYqxK42RyWOffzHg0stUQ4BQEemAylnpSxC/vvblWebaKgfAp3KMQmTfgXMAfzTF9rIkVK7lsJQ==
X-Received: by 2002:a50:ac68:: with SMTP id w37mr10169128edc.10.1560374065955;
        Wed, 12 Jun 2019 14:14:25 -0700 (PDT)
Received: from [192.168.8.116] ([194.230.158.146])
        by smtp.gmail.com with ESMTPSA id e19sm165424eja.91.2019.06.12.14.14.25
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Jun 2019 14:14:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, amir73il@gmail.com, jack@suse.cz,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] fanotify.7: Reword FAN_REPORT_FID data structure
 inclusion semantics
To:     Matthew Bobrowski <mbobrowski@mbobrowski.org>
References: <20190611100043.GA5057@poseidon.Home>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <19929d2a-b85d-d2e7-f02d-5ee5682a2496@gmail.com>
Date:   Wed, 12 Jun 2019 23:14:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190611100043.GA5057@poseidon.Home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Matthew,

On 6/11/19 12:00 PM, Matthew Bobrowski wrote:
> Improved the readability of a sentence that describes the use of
> FAN_REPORT_FID and how this particular flag influences what data
> structures a listening application could expect to receive when
> describing an event.
> 
> Signed-off-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>
> ---
> 
> Michael,
> 
> This is the patch in response to your previous feedback around the
> confusing "Depending... determines" wording. I think that what I've
> provided below is clearer. Any objections, please let me know.

Thanks! Patch applied.

Cheers,

Michael

>   man7/fanotify.7 | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 82f6fa786..c64ff8daf 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -142,12 +142,12 @@ until either a file event occurs or the call is interrupted by a signal
>   (see
>   .BR signal (7)).
>   .PP
> -Depending on whether
> +The use of the
>   .BR FAN_REPORT_FID
> -is supplied as one of the flags when calling
> +flag in
>   .BR fanotify_init (2)
> -determines what structure(s) are returned for an event within the read
> -buffer.
> +will influence what data structures are returned to the event listener for each
> +event.
>   After a successful
>   .BR read (2),
>   the read buffer contains one or more of the following structures:
> 
