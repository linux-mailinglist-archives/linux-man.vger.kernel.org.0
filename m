Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 81ABF19F53C
	for <lists+linux-man@lfdr.de>; Mon,  6 Apr 2020 13:56:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727349AbgDFL4M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Apr 2020 07:56:12 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:34007 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726329AbgDFL4L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Apr 2020 07:56:11 -0400
Received: by mail-wr1-f66.google.com with SMTP id 65so17106226wrl.1
        for <linux-man@vger.kernel.org>; Mon, 06 Apr 2020 04:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CzAAAwQ9Hke0eaj6bQnRkpk1YVtvYycrExOtZQQwHr8=;
        b=ZC4JftbOBxHMqp7mE4tFuOiELt80Xvz4XSA49NbpLdkLaYM4AAwqxwdcn8J57n3DFX
         HNv6Ag3vqfaW+2VKXds/dq3kH09Qh4b1HZn6e82KlgPE1u7iSLQ3rChbI6JxiLMmZi4P
         12sDbRmH+DX6pJ1luXvLBBPfCnJ44o2cIr2rZ79n68C9sAz1QDrzjorhQMUYCycBK9Bm
         20H6zu70D9mBTkgG8DCeN1JWsngTeGmbOZQcEm8/zpKDEtqkrJUlCOsI/WYvgdfmuynL
         TfqhN9jqwmF9S6NYolAtjqKHL/fNIHTJeVn0lIPrkGagVpDnTiY+NX754yCcB5LDjCqQ
         AWVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CzAAAwQ9Hke0eaj6bQnRkpk1YVtvYycrExOtZQQwHr8=;
        b=OCNteEEVXj7p86jCUgGBgEb08BuK5/DdxFmBzRMQSL36CkXgJyFpsJkMvO4Pt9AGgc
         gvq2OTtFoq04uR6a6Wyvb6R2TW6rZmoAoEUZ8vVyWTo1ci8Q6EiT298rDs1aZFE+I2aN
         crpd2N6TiGQuD8CM/AKykzgDFo1aCkK8Tvror2nr2WBHngeu5/G/TA4F5DTL6YtiVm9P
         be7jLam3oBMT1Qi2E8fXXHfExc2volPpEBpGzzIHWvWjYpoiRqPPkN/LXRM/nJayLnlm
         HjVggpkYhuh9g56CDtBkn3HkS3QoxM1OypdFW1jPlOewwE0gW3d7h5PXxAso6j+leQRQ
         f5Yg==
X-Gm-Message-State: AGi0PuaiCN5GTQU50gzseDa6ChZyvu3mwkgG4tuhmb4aTKb0WB1lwEPF
        wAvztVI3m1IvwkRTG/IkH5zksS6u
X-Google-Smtp-Source: APiQypIYSdZNa1cI5kDx3qeS4qE7QafTXHqgMUi7Pwy/lIMpzdqJsnqpIvvAg/n5YhyMSe3m0Wbfkw==
X-Received: by 2002:a5d:4e4e:: with SMTP id r14mr4425519wrt.362.1586174169544;
        Mon, 06 Apr 2020 04:56:09 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id u22sm24818456wmu.43.2020.04.06.04.56.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 04:56:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] unix.7: correct example
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20180627010905.8959-1-xypron.glpk@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <aa4d4662-0024-0e10-6eee-87efae7a681c@gmail.com>
Date:   Mon, 6 Apr 2020 13:56:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20180627010905.8959-1-xypron.glpk@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Heinrich,

On 6/27/18 3:09 AM, Heinrich Schuchardt wrote:
> The example is misleading. It is not a good idea to unlink an existing
> socket because we might try to start the server multiple times. In this
> case it is preferable to receive an error.
> 
> We could add code that removes the socket when the server process is
> killed but that would stretch the example too far.
> 
> Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/unix.7 | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/man7/unix.7 b/man7/unix.7
> index 064c12cc6..630a6384a 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -754,13 +754,6 @@ main(int argc, char *argv[])
>      int result;
>      char buffer[BUFFER_SIZE];
>  
> -    /*
> -     * In case the program exited inadvertently on the last run,
> -     * remove the socket.
> -     */
> -
> -    unlink(SOCKET_NAME);
> -
>      /* Create local socket. */
>  
>      connection_socket = socket(AF_UNIX, SOCK_SEQPACKET, 0);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
