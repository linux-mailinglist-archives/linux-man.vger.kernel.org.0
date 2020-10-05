Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B188A28424F
	for <lists+linux-man@lfdr.de>; Mon,  5 Oct 2020 23:57:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726813AbgJEV5A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Oct 2020 17:57:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726714AbgJEV5A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Oct 2020 17:57:00 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 641E9C0613CE
        for <linux-man@vger.kernel.org>; Mon,  5 Oct 2020 14:56:58 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id m6so11262742wrn.0
        for <linux-man@vger.kernel.org>; Mon, 05 Oct 2020 14:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=eF7Skn+tmliMz46IhiysooGOwWbtVFp4yCFNeoZcqTU=;
        b=FGlbc07pbOfiDJ5FDatV7DlcH6Vjh0qg1KOqvzm4di/nQTO0SLIxBpYnAq4suLVbsn
         MDVAZOI8JnojmB6tHIEhg2z8IfQUjhKl/qYoCMI+04nUGaXSm2d+e0uQA5vVkCYI39sX
         dSfxl29hAv8v2RI2WA151M3+y0kVIbxSAOlISFYs5Sn6VXdkLj+DvOv8OC93d7Yysu+/
         /w7drj8wnjzcG+0JKc0bD3OHwGtq3SjdV11U5UlYl+pNljz3U7UO7TvG85BrvqjdRhTr
         3eds+Oo154XW3A5oYRDqSUN7A6OKly2/E+OkA1EQtxKkhWcu6aTn2Zl3kpaqJSoM63v7
         e4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=eF7Skn+tmliMz46IhiysooGOwWbtVFp4yCFNeoZcqTU=;
        b=Wo0rEr3HQjxg7Yn4upv3x6Bj4Rh9TK1Sb/kR4KO2Q7WIkVLqxDmuOjfdL9742Io4qC
         3wNYxNH6sqVCksHb4eeUhSTnj4iu1iFjolPhFlgwqZ8eOEd+DWHyIVphbOdc+YvL612I
         Q/HCtgvb/98bxoTIwb3SAxXvjuf1ppUO4FXVQ7c1icg+or5kHHFQQrE7N3wl6DYiiXo2
         y0OMVq8cWiMqF3k+VCjOZTXqe2MG/K/FJzbMEAAAcwQGsj2eXPTAic25x1NXX8xjAPIh
         D3ZhU0MIyxVvRBC+cxEo9E2RQd9FMTctKtffAHk4+GqJPqwHvvsP2tcxJ2nEhb/iOtMq
         sdZQ==
X-Gm-Message-State: AOAM531Vzy8ql7K460WiU7rE5x1VpktTd4D4ZBYbDfOsDgC7xCDl/N9R
        /Cml7OOJWh2DeLFc6ggHyNn8TxpisNo=
X-Google-Smtp-Source: ABdhPJzM22ElphYDzPk2KzRpMpE17bOOK/N/rXDiST6wmhpR01pQZpKd6raLiZ1N9ZeDQSUIktmpIQ==
X-Received: by 2002:adf:f846:: with SMTP id d6mr1547938wrq.56.1601935014881;
        Mon, 05 Oct 2020 14:56:54 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id f63sm1138344wme.38.2020.10.05.14.56.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 14:56:54 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: llseek.2, lseek.2, lseek64.3: Duplicate documentation?
Message-ID: <8b189f6d-1320-8ea5-2539-e0c1fc45e75a@gmail.com>
Date:   Mon, 5 Oct 2020 23:56:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

lseek64.3 documents lseek64(), and it also documents lseek(), lseek64(), 
and _llseek().

Then there's lseek.2 which documents lseek(),
and llseek.2, which awkwardly only documents _llseek() only.
And then _llseek.2 which is a link to llseek.2.

Maybe you would like to reorganize those pages.

Cheers,

Alex
