Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45D1938DB04
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 13:12:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231697AbhEWLN0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 07:13:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231687AbhEWLN0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 07:13:26 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0E8EC061574
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:11:58 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id g7so16386636edm.4
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:in-reply-to:references:user-agent:date
         :message-id:mime-version:content-transfer-encoding;
        bh=1lmWMpkTeEO97f6iBlIFU88foGnzgL5sXO44NukiROw=;
        b=pc9+mj7jZsZsoPib1VdbvQQl1S/Xz30cTe+WIK0sPOSoXWp5q1LmcLFD2tlFAVNRLN
         6BfVS4tekvRMsS7U0I3mWfqi/qqrSKnAKx6whw8fTnsdzmuTuye88RHscfDTlwDw+djN
         ChBIiEe+qvFFBAn9q0ioU4uQSu+6AnALn4a9S7kzO3Rio/L7ru+mtKp7dU1xM2P/X0KO
         hUvTWEk2UNzw05IHPu6ybm48jU0nIP5exLEKpC6inmGj+EOEpjDguRrsDBfFuDqucARa
         siyQEgkffLe2036tGPI7hlX3hfPnDSB7pSr9aej6C4A6eD/OOWVv2m4zMPVxNPr6XPSy
         eFyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :user-agent:date:message-id:mime-version:content-transfer-encoding;
        bh=1lmWMpkTeEO97f6iBlIFU88foGnzgL5sXO44NukiROw=;
        b=amj4m7dQ4J5KKRT3A79P9eA2y3L1zWi8OqB+pQIa8AVcpqxP7sJeOK/AgJqgegBiZY
         JSn9UPfg6G/AyFFCn0QFiLWabpYRfq+KI7Ssuvy/oRHMoGFHqumhIgJotECrJObmLM6F
         zn+ZSSbqQQZ+6RaQM5IKxDIYI0heICHC2f8pA0MswhGabhpRDzAd1sN9q8ZnzeawjAjR
         /XqhXoVHRuBJhywW74+iSqZiE2tz9mlAhRbatvWlAMbQncMxSmXmtxMpuAoM9oATelxU
         6DJz4zD9NCQN3KGXXi+DN5lr1bZXfqkSiDpdRciWn1dbdsCbmjXcM866NnDxZC/Y/SxK
         ZW1A==
X-Gm-Message-State: AOAM5335TECOJuHYb2HoxX6Sg/oBa7XqCXYQ6D756gi0q0WqalE0wJ3K
        Kh3aLiBTV+Efqc/3GIXj5ik=
X-Google-Smtp-Source: ABdhPJxU6ZaIixKcCIPI51O03ZrdmeeFJmw9Vv+OKOa7MH5pWRERFJEkvCoAcZGOnkf8eq1iLKTDBQ==
X-Received: by 2002:a05:6402:cb8:: with SMTP id cn24mr20058728edb.325.1621768317021;
        Sun, 23 May 2021 04:11:57 -0700 (PDT)
Received: from localhost ([185.112.167.54])
        by smtp.gmail.com with ESMTPSA id m19sm3426110edj.64.2021.05.23.04.11.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 May 2021 04:11:56 -0700 (PDT)
From:   =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] strcmp.3: tfix
In-Reply-To: <6ecdf243-c546-752b-7cf7-f6f190e5d5b4@gmail.com>
References: <20210522161750.2756568-1-stepnem@gmail.com>
 <017191f8-1cb5-c02c-b4d6-c09b7461d348@gmail.com>
 <6ecdf243-c546-752b-7cf7-f6f190e5d5b4@gmail.com>
User-Agent: Notmuch/0.31.3 (https://notmuchmail.org) Emacs/28.0.50
 (x86_64-pc-linux-gnu)
Date:   Sun, 23 May 2021 13:11:55 +0200
Message-ID: <20210523131155+0200.538314-stepnem@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, 23 May 2021 12:50:21 +0200
Alejandro Colomar wrote:

>> On 5/22/21 6:17 PM, =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec wrote:
>>> With a single backslash, '\0' ended up as ' ' in the man output.
>>=20
>> Patch applied.
>
> D'oh, I forgot.  We use \e to specify the escape character (see commit=20
> message of d1a719857b7eb68f5e5c1c965089038dee683240).

Oh, I should have noticed the usage in the very same man page...

Thank you for the reference, too.

> I dropped the patch and applied the following:

Thanks!

--=20
=C5=A0t=C4=9Bp=C3=A1n
