Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E640271BE4
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 09:32:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726474AbgIUHcT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 03:32:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726211AbgIUHcT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 03:32:19 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A0DDC061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 00:32:19 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id l15so10872189wmh.1
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 00:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=N9uy/xSueGr5PU8aS+soPA0ETeIPtVZthgKt41AQrqY=;
        b=I983jGzNBaWkGDTC9hFnbr8vf0+WKDHrLYwj/l6Jl0pfLp4ifqmayTMLitb03v2e2G
         0MokDDyQqg9ZDYWbIVDecWkRaSWzWHPFOmAOLJMmnFhkBRtFwOiaCiIi7ruO6W1qIacB
         1ZiPUbJs+InsZGDd+f7iU9WG2QEeZB0fkNw8Ql/CdkUHipH1UJAcTEGJj3p4I+wibMas
         yPR02tTsfqrpMUFxmyKQHvdNgsH9iqkV7joIlxF5+ArOX3UUMBgd/hHDBAa48oE3EnO9
         mtvMAF7iMnpXkJjQVbC8MPAzJCbwFxoVE8YC3lUXW56WCqjElJh+aQQxx37Zz3oQK/dK
         zGaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N9uy/xSueGr5PU8aS+soPA0ETeIPtVZthgKt41AQrqY=;
        b=IdPWXES5ncKyy3es4Be80+KgGi58vOcDc7QMt44JTlPfW0lL9E2Pp+pgahehdWoYRV
         yzg0n5yYRp8N5JQWtGo2Oyv4gT05z/s7LRrbw7zACeFZTImueYCGilvdQWxYGt959Hrs
         GctNbYW5tTvELcxuQAzmkKDyfZoQ5MwAcwsMLUJjbEoEkszvo0qs3FufoWP2fSSgjq9/
         8IZyC6ZIruBjihMhXCAzdSbP0KiZBV7GNbDpiZL/BVyi6UMtQ1Mh8R1eQgy8X4e2dqc/
         hGZ03PIJlHYNrrfYl8loWBAsNkV51QfLwUr1WlL6h99YqY6HJdjPuJ0metMoXreJSO11
         jAPA==
X-Gm-Message-State: AOAM5326mYzbdKvYl3umIOPQcda/5sl/lxfrEqYPfPhcyjXWEHUlD7k/
        5dBzEv06y8zyTGDCx27ej4oNUTmSb8c=
X-Google-Smtp-Source: ABdhPJxFAr/b8NTC1bdHkf9ZPEsRP6VpACh4FC3+b7552Zvt5wCk19rgwFra8mZGxL6wIbhXsi0I8A==
X-Received: by 2002:a1c:5988:: with SMTP id n130mr14974049wmb.95.1600673535813;
        Mon, 21 Sep 2020 00:32:15 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id n2sm20243571wma.29.2020.09.21.00.32.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 00:32:15 -0700 (PDT)
Subject: man-pages.7: Simplify indentation of structure definitions, shell
 session logs, and so on
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
 <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com>
Date:   Mon, 21 Sep 2020 09:32:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,


Indentation of structure definitions, shell session logs, and so on

When  structure definitions, shell session logs, and so on are included
in running text, indent them by 4 spaces (i.e.,  a  block  enclosed  by
.in +4n and .in), format them using the .EX and EE macros, and surround
them with suitable paragraph markers (either .PP or .IP).  For example:

                .PP
                .in +4n
                .EX
                int
                main(int argc, char *argv[])
                {
                    return 0;
                }
                .EE
                .in
                .PP


That could be simplified to the following, right?:

                .IP
                .EX
                int
                main(int argc, char *argv[])
                {
                    return 0;
                }
                .EE
                .PP

Or is there any difference?


Thanks,

Alex
