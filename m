Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF6441FA2FB
	for <lists+linux-man@lfdr.de>; Mon, 15 Jun 2020 23:40:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726329AbgFOVkK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Jun 2020 17:40:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726303AbgFOVkK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Jun 2020 17:40:10 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6798DC061A0E
        for <linux-man@vger.kernel.org>; Mon, 15 Jun 2020 14:40:09 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id t18so18654492wru.6
        for <linux-man@vger.kernel.org>; Mon, 15 Jun 2020 14:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=GYHhrcCBTT7fYtLAcf3MMFLsmCtqZogWBUlLhk52Mcs=;
        b=oRtUKTda+22Dc3UTTU7L8jfcbl1P1Xj+HxJZFVAP/gx/xJFDcrn+8B7jJs1XZEyKYk
         /CaPCMbn58SSLl7Lk7qLLwRmyMrvy8EsInJCCzzNwS+kRH/ErFVLMvbNfeR1I4mnGEQ7
         z7ekBh+YysAAL1Xyj4OntXUrnBFZ+N7KgAldR4LAmPRXXhpAkb6hfm+3Q0r/n+BMjUJS
         czkcNBMHGNKvVZw9wIoZJd+S0DUPiGXrdoDMmg8zidwttWZ3PiZkZEuc8XPpafyAaf2g
         h63uQF1OQRk3jmNeYgFxOamWYF3JmrkZPqvKLOcQS4Wd8Ifq26oj/gQJoNR8rjyaRIDW
         DnFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=GYHhrcCBTT7fYtLAcf3MMFLsmCtqZogWBUlLhk52Mcs=;
        b=Cp6i3vv8aw9MsYYDrnQvKzg247Z+hBvhv72Wk12GH+fvfFoNMBtrRORUgdQoxFkw+6
         4Ze8eYzNt8aDFlKH3u2GSRryT6NhZmFStg+1HBPqsSJK++YRl62VAlkMmo/RaFbMLQ4b
         KhFUCyHV/3t/C8MO9XxsFwkv6LMpAog326ZXa6B3wnhrG5Bm9NPFOItZ91YA94dMXbqK
         hKY8zq9h/bwgYN4hhAeQNscQ2d1VSdEcCxwzZm6ykM9AR90g7I2To1QZjoDEFHZHNoUr
         RNKiJFxhsDAF9h2IgbsWTA6wqcTi5QS/dLNQ7+Q716JsiTUB1bsONj10Gsz1niLcPtnR
         ycrw==
X-Gm-Message-State: AOAM533ilcHHNrmUQdKBjVUCIcJhJivIr6Nn+CWJIhTI1XUu6rozNyGE
        mNiyxT4jtyn91OwUm38TcHQmSPFq0rw=
X-Google-Smtp-Source: ABdhPJw6ksW/kN60ZMPjymdzdg76XZ8jMTn+qesOQItlzHlQBUTEalyvzRX5aQBtxztpm/vFrzLiIA==
X-Received: by 2002:a5d:4042:: with SMTP id w2mr32268281wrp.423.1592257206623;
        Mon, 15 Jun 2020 14:40:06 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id q5sm26034217wrm.62.2020.06.15.14.40.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 14:40:05 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: pthread_create
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Message-ID: <1d9f60fa-9446-d038-f98b-c307feb0849f@jguk.org>
Date:   Mon, 15 Jun 2020 22:40:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello mtk,

https://www.man7.org/linux/man-pages/man3/pthread_create.3.html

This has a good example I saw, what do you think about replacing these pre-processor macros containing do {} while(0) with regular functions?

Something like this:

void handle_error_en(int en, const char * const msg)
{
      errno = en;
      perror(msg);
      exit(EXIT_FAILURE);
}

void handle_error(const char * const msg)
{
      perror(msg);
      exit(EXIT_FAILURE);
}


Although I don't think errno is such a good idea. so I'd probably write:

void handle_error_en(int en, const char * const msg)
{
      fprintf(stderr, "%s: %s\n", msg, strerror(en));
      exit(EXIT_FAILURE);
}

I'd also suggest adding the command line to compile $ cc -Wall -pthread -o threads threads.c

Regards, Jonny
