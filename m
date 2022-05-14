Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD2AB5271DD
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 16:20:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233050AbiENOUW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 10:20:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229828AbiENOUV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 10:20:21 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A1F229C
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 07:20:20 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id l38-20020a05600c1d2600b00395b809dfbaso5894000wms.2
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 07:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=hB3KS+8MhBzhr1E8nYA3DQk3HGtYhyxeaZj563V9rE8=;
        b=StKXwLFyaYtiP+rQjGa6z2iukxQW0VaTPV+V2AR0hwD6L3Pxpmp+zHPF6KuEx3/QKS
         7Izwd67kxnYd3H4IxygzZbdz6AKKVd+ISTnaB30EGupBPSqnaUMRd9bTCTOd9J9rC7qz
         q2YljGntMyVyoVEXYx6qZVbqYMHLF0IfOrI+8t5GTluvUSTJV2A4dNQJCbkA4UDJoHO2
         nF5VCRAeLFLzB7lN8S+1Natox+ufQbp7VD61ljb4/BVrDwmf/1LLaGZlUPVqljw72sLF
         bAbe3S6HWKVCNoT6MQtnkOf6T9xG0Np+u09RV0oDPVlwkVDUc1vdTMX8IERJSCKthaMM
         MbTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=hB3KS+8MhBzhr1E8nYA3DQk3HGtYhyxeaZj563V9rE8=;
        b=3+Quz7n4h5zk0Fcrpy06IJjttMX53tKOOnpmPTu39RMSPY3KzKyiJeZscjRaLhtwQd
         fYZBccXpNKbxO+9X0yFS9mfgac+zzNAZtCCXZNbqCwMbLYyR5SwzTxSUo+pprPf47tdk
         aZ0RuVtUVRCbLIpeSvy1BUzbmS9mVowm0Ch2dTEozfa0vGbcXz5DZJUSKocnfvJl8kVw
         pWS0G647dRpd660Q+PFQq+h8M5vG/tzNX+oHnSCpzXQJHc8hDxpMBOO3HtuH43ZIhYZL
         uecyYlUDAFdVmX1IkcJlnG7JrM7XrLlefUzPxz1y6miwknkmypqET57IgnMoMN2zWd3p
         TE7Q==
X-Gm-Message-State: AOAM532X4ohb1oDVcp1u6E+fIZsWK2AqdjFPy3EH37Cf3BzBsgLvXel5
        up+uB8BC62n0QMZL8z2rWyw=
X-Google-Smtp-Source: ABdhPJwZrZVFAizgGfsu3Eti4E02vIEdWLvxD/vAEywbhqXc6riHsd+Nwk0md2JSZZi4w1lEJocRZg==
X-Received: by 2002:a7b:c199:0:b0:394:26d0:a6a9 with SMTP id y25-20020a7bc199000000b0039426d0a6a9mr19551749wmi.116.1652538018988;
        Sat, 14 May 2022 07:20:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n4-20020a5d5984000000b0020c77f36b13sm4886324wri.100.2022.05.14.07.20.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 May 2022 07:20:18 -0700 (PDT)
Message-ID: <1fb620af-88dc-b21b-9b2c-e45ba7035138@gmail.com>
Date:   Sat, 14 May 2022 16:20:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] getpriority: Only getpriority translation the priority
 values
Content-Language: en-US
To:     Theodore Dubois <tbodt@google.com>
References: <20220510220821.1481801-1-tbodt@google.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220510220821.1481801-1-tbodt@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/11/22 00:08, Theodore Dubois wrote:
> The translation is needed to avoid returning a negative number from a
> successful syscall, and this requirement doesn't apply to setpriority.
> See the implementation of getpriority in kernel/sys.c.

Confirmed.  See:

$ grepc -tf getpriority kernel/
./kernel/sys.c:274:
SYSCALL_DEFINE2(getpriority, int, which, int, who)
{
	...
			niceval = nice_to_rlimit(task_nice(p));
			if (niceval > retval)
				retval = niceval;
	...

	return retval;
}
$ grepc -tf setpriority kernel/
./kernel/sys.c:204:
SYSCALL_DEFINE3(setpriority, int, which, int, who, int, niceval)
{
	...
	if (niceval < MIN_NICE)
		niceval = MIN_NICE;
	if (niceval > MAX_NICE)
		niceval = MAX_NICE;

	...
}
$ grepc -tm M.._NICE
./include/linux/sched/prio.h:5:
#define MAX_NICE	19


./include/linux/sched/prio.h:6:
#define MIN_NICE	-20
$ grepc -tf nice_to_rlimit
./include/linux/sched/prio.h:32:
static inline long nice_to_rlimit(long nice)
{
	return (MAX_NICE - nice + 1);
}


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
