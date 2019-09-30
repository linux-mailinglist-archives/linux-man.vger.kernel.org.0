Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 79874C2858
	for <lists+linux-man@lfdr.de>; Mon, 30 Sep 2019 23:12:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731991AbfI3VMU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Sep 2019 17:12:20 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:42803 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731050AbfI3VMU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Sep 2019 17:12:20 -0400
Received: by mail-wr1-f66.google.com with SMTP id n14so12911067wrw.9
        for <linux-man@vger.kernel.org>; Mon, 30 Sep 2019 14:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=guG+UYqmKwQweVDX64MqXehhkwBENdrl9FLgBwZkBN4=;
        b=R3rxaWp7s7WPDT6+fLEbHu42NQwJVifpPaDyU2eDCnsefK2EB4ycpzYXcVWsxFv4P/
         FkBDdgZjcxuMpRcPf+qRazwYx4raEfvwF3ow/XEV9mhN59O45gHK+rirwh1BuVv/fGqe
         dOkYUDegT3t1RDCJQiaZgod6haPwHkKajl3KksJiOCVE/WM/PgyUVXaDPcuNfYoxOJvi
         0/GND1ciBAmv0UQjjTvIwAucaCY88VllIBOVE3l3JuSBqUCQfXokl+lYZsdjLUuXRsAr
         TLjYV1go7isAE77u3JJociu6NJLcnGMMvDZ5fibDbVpPFetkSngYB5qIPyTRwliELQ4/
         Ku3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=guG+UYqmKwQweVDX64MqXehhkwBENdrl9FLgBwZkBN4=;
        b=qdF5mVXbgeUIaHlEodPeRWwhU+DLzNwKSQ0/iay3fmTHU5J8J7zIhJ0mcHeXkT7KrB
         MEk5MzTowQNOz3U2zM4gpn2kzLhU72/CRH5Yw90kFZwU5qeARYzuxtJ7D5qIkIx8g5uU
         aZmyH2QUDTsCs4lMbzQfwZSYdcm+nfQNyb335ZG36wfFYFv3SBxqq06SVhTZvhUsYr5i
         sDWT+8OVElM27OjLFel5dF3e7DiFGkbRmD1Q/+Budeh/5uK/Ta3dcm8ZohYpi/oDLyEk
         vKIs//EjQezjlhWjAngOePATikUanYmLJ1HLCYwrDfoMz8pw6DEftMHAH6R1avqvfJJX
         eoJQ==
X-Gm-Message-State: APjAAAUYPsMap6WaUw+mfNMQbkivOKe9orduQuGEbNYOqFoq1SAyBCQa
        PfRjm2ygGi/nKlmA9+n1clLKFCKc
X-Google-Smtp-Source: APXvYqzVzUWF+gYCg6vqM/Upqy7ERrrUx4V3UU4dLO9AAT2Rkm1xhTvHhzQs3hkVsfnNIs+TMeQY+Q==
X-Received: by 2002:adf:eb42:: with SMTP id u2mr14699872wrn.307.1569877938138;
        Mon, 30 Sep 2019 14:12:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:24d6:4e01:ef75:e978:47cd:1c50? ([2001:a61:24d6:4e01:ef75:e978:47cd:1c50])
        by smtp.gmail.com with ESMTPSA id w12sm22749757wrg.47.2019.09.30.14.12.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2019 14:12:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Bug: Small typo in gnutls_x509_crq_get_pk_oid(3)
To:     Toni Kontinen <toni.kontinen@pm.me>
References: <db037e4d-5e89-ef11-5dce-61939326b316@pm.me>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1b6e8acf-0ff3-67cd-b41b-789af7d9055d@gmail.com>
Date:   Mon, 30 Sep 2019 23:12:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <db037e4d-5e89-ef11-5dce-61939326b316@pm.me>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Toni,

On 9/30/19 1:50 PM, Toni Kontinen wrote:
> Hey,
> 
> There's a small typo in the description section of 
> "gnutls_x509_crq_get_pk_oid(3)" page. It reads "This is function is..." 
> when it should read "This function is..."

For bug reports on this page, please see:
http://man7.org/linux/man-pages/man3/gnutls_x509_crq_get_pk_oid.3.html#COLOPHON

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
