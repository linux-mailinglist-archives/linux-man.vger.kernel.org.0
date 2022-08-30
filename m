Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C55565A7424
	for <lists+linux-man@lfdr.de>; Wed, 31 Aug 2022 04:53:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232012AbiHaCwv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Aug 2022 22:52:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiHaCwu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Aug 2022 22:52:50 -0400
X-Greylist: delayed 11737 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 30 Aug 2022 19:52:49 PDT
Received: from mx0b-00169c01.pphosted.com (mx0b-00169c01.pphosted.com [67.231.156.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 707E1B531A
        for <linux-man@vger.kernel.org>; Tue, 30 Aug 2022 19:52:48 -0700 (PDT)
Received: from pps.filterd (m0281122.ppops.net [127.0.0.1])
        by mx0b-00169c01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27UHDKKv011001
        for <linux-man@vger.kernel.org>; Tue, 30 Aug 2022 16:37:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paloaltonetworks.com;
 h=mime-version : references : in-reply-to : from : date : message-id :
 subject : to : cc : content-type; s=PPS12012017;
 bh=XNbGVZvZEz6WYaNLYbxwM36ND4nf/9WIeQtqVXKQA6I=;
 b=rfJDc2k5wUjfLqta7DRD0otCQ4jqWdXyK1+pPTbAGqTJbWZDfZ6vu6vkXzxrZqgQaj3P
 OoNO5uvGTs3Y6shdVTkmZzMSg0tuErj/eNHLGDTfVk0PzF/DebUDHtGpd8nFGrmBszym
 umMkLn88Ig/H01O+uYAVSh9WFNlYe6j4Cw0z/yKLkqrv8dn7FLVbILk/tLTiu1bEL2DJ
 rs+nr0MEgNi0onqloOxxD8YuQlxAMUXCiZg8SVm2QZ86zzwkd8r7IBJSio/trFjM4bjC
 vmzhFUWTO0kwFZxBo2Q+ArKJrHyOWnW33SHccp9QF1ImbPcBt4DDp/cTwdMZ/mSO2xUs Fw== 
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
        by mx0b-00169c01.pphosted.com (PPS) with ESMTPS id 3j7gvmrrbm-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
        for <linux-man@vger.kernel.org>; Tue, 30 Aug 2022 16:37:10 -0700
Received: by mail-pg1-f199.google.com with SMTP id f186-20020a636ac3000000b0042af745d56cso6207620pgc.17
        for <linux-man@vger.kernel.org>; Tue, 30 Aug 2022 16:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paloaltonetworks.com; s=google.paloaltonetworks.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=XNbGVZvZEz6WYaNLYbxwM36ND4nf/9WIeQtqVXKQA6I=;
        b=OLZfBzaNqyMFN/8D+Gg55ssl0U4IipAsKrZYAmSCo7jd3zy8vfbfx22/9fvk9/U+Yr
         kfW+4Tna69Omi6cEZB4MeRH0boYAV8Rs3PcqdDYDfoSDPDbB4SyVqPSuQo18O0KYWhDN
         UPxoxI1IwKcnC+gRucQQusvSkrTyL14gGz4JGe1EUH6bMOvvibudIpQo9DcBcFhjkYwW
         RkzuzyEzaieT4FGxsNG8cbONUqtCt3gHfvFewCnU6OxSiPvYqyK1Tg9Y/OWI+IK2cnhx
         VRS7323jvLx09fFCpS4TL1PXyEqnUyYSl5pkt5hBrdzU7HTZ1FDs/qKbkBYm+RUB3Cvn
         Wh3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=XNbGVZvZEz6WYaNLYbxwM36ND4nf/9WIeQtqVXKQA6I=;
        b=TkGfg5aBdV8z+YCDNju9nEZQ05jyhCUGEjbFo9Pckplo6w4YwqnOZpYYT9rYYjQ63C
         k60/kmzoNPRcxTyslvsbPzBA8nciUUHm3WQYawpV1on1KWN1FRPic4J/0c0G+0eQwEZQ
         ogFX1U8o7QH3QRRQDUE7AZCegjHPOnfalhjsMuLgLvcmj9uao/gonIVqFqe9gtrQ9Hfn
         AKJf1Ruai925qRF+Fh5e20fUwxxa4/fZe2q/7zDaYjObm8BS4vfemESv32oTwFRDkKDf
         FIi52FmradH/mOqiaQslpEeW7q6MaNO/KV17ZIl1OPEIjfsonPbSnqIgydMkx0B0Mc4/
         wAwg==
X-Gm-Message-State: ACgBeo24qwPfeIdJjLCEGpaECWm8iGWkSonhJ0v8fOL/1P831bcQrO96
        CJbNyLB+E+dX3N+2pAf2AMpxksWQp6ao2JuyMnZdzG++TiYB6H0o62C33b9eJXld8n9VQZ1lnQU
        5f9RxsrmOxCPdXHcTpz+UUfkRtjSWmhShOVJi
X-Received: by 2002:a17:902:d4ca:b0:16f:8311:54b0 with SMTP id o10-20020a170902d4ca00b0016f831154b0mr23485800plg.108.1661902629569;
        Tue, 30 Aug 2022 16:37:09 -0700 (PDT)
X-Google-Smtp-Source: AA6agR69nr876OdaQQ6nZ8S2tMrmLShVtcezxPfs1Q6DgzHsM8H/WK+FLHNEApTGIOXuTujlEwTdKjTiCNeWrNMo6qI=
X-Received: by 2002:a17:902:d4ca:b0:16f:8311:54b0 with SMTP id
 o10-20020a170902d4ca00b0016f831154b0mr23485786plg.108.1661902629278; Tue, 30
 Aug 2022 16:37:09 -0700 (PDT)
MIME-Version: 1.0
References: <CANJ8pZ8y=DMRVDLW+Suy00aeShuoWLwYGRr6z98qODLJzbdcxw@mail.gmail.com>
In-Reply-To: <CANJ8pZ8y=DMRVDLW+Suy00aeShuoWLwYGRr6z98qODLJzbdcxw@mail.gmail.com>
From:   Enke Chen <enchen@paloaltonetworks.com>
Date:   Tue, 30 Aug 2022 16:36:58 -0700
Message-ID: <CANJ8pZ_axZRFRnTv1DTz_12wv8FiqAZFVyanvfEJ1i6_S=WSrA@mail.gmail.com>
Subject: Re: Patch for TCP_USER_TIMEOUT in tcp.7
To:     Eric Dumazet <edumazet@google.com>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-GUID: tttmgWIpNs2JcUzFXzuUSFw5aVApSPtm
X-Proofpoint-ORIG-GUID: tttmgWIpNs2JcUzFXzuUSFw5aVApSPtm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-30_12,2022-08-30_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam score=0 clxscore=1015
 impostorscore=0 mlxlogscore=709 mlxscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208300107
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

To clarify, the patch is to make the documentation reflect the
behavior of the code.

Thanks.   -- Enke

On Thu, Aug 25, 2022 at 12:00 PM Enke Chen <enchen@paloaltonetworks.com> wrote:
>
> diff --git a/man7/tcp.7 b/man7/tcp.7
> index 82de9a2c7..94d26c3bb 100644
> --- a/man7/tcp.7
> +++ b/man7/tcp.7
> @@ -1206,7 +1206,7 @@ corresponding connection and return
>  .B ETIMEDOUT
>  to the application.
>  If the option value is specified as 0,
> -TCP will use the system default.
> +the option will be disabled.
>  .IP
>  Increasing user timeouts allows a TCP connection to survive extended
>  periods without end-to-end connectivity.
