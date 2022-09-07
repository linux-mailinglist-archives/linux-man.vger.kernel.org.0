Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D6A15B0B5A
	for <lists+linux-man@lfdr.de>; Wed,  7 Sep 2022 19:20:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229731AbiIGRUN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Sep 2022 13:20:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229903AbiIGRUL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Sep 2022 13:20:11 -0400
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com [IPv6:2607:f8b0:4864:20::932])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B52F74DCB
        for <linux-man@vger.kernel.org>; Wed,  7 Sep 2022 10:20:10 -0700 (PDT)
Received: by mail-ua1-x932.google.com with SMTP id z14so5768784uam.10
        for <linux-man@vger.kernel.org>; Wed, 07 Sep 2022 10:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date;
        bh=FcyQcUXi9xALQQ6Lm7VNXiWYStBjH/LCUTADg6v4m+k=;
        b=BPxDTt3xe0YDB9bP5h6GTCdolbibMd38wL9VqlQNjeZEfQ9kBoEbJe98ndlPdOw5r1
         THHcTbl4Dew5L1+fMw3GJCgo16BMuf/afgKaFCGjc9LHOAtGN4q9pv2fbJd5smeLMW3H
         J9N3ohHOENrQpZEW4XzbAJQ6qHs95wNqm87hq/An125M8ZwFYBo6IayyLWKfEXBwicTs
         vq1v+pTJQiGop6n+Xb51aPd/hTmfEOR6/p5XRLUEOyTLYhRVFmaXp/DWdru8iq8Nb1c7
         rtSUGhnYRXka+PMVk/zaKKWZXOJ8DCjNFoHEVXA5jlJsltbLj8eiFKIaOo6/cxeI99N6
         khYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=FcyQcUXi9xALQQ6Lm7VNXiWYStBjH/LCUTADg6v4m+k=;
        b=Zf0dWegWV3w2qwOO4r9TYRhiqa40ua03xwefLGtPoxr7u54VZpEWDDpl3i1P/c33l+
         SMxoZxKKJXOYDEfDlgO3tHdFceBPJIRVwqwOCaHM6HB//f6CBtzrOaN8/4wUy87R4W36
         E3HuKsCN0hgjlz2VK3JHRVRJQbgjW6t1dqkxfVs8QpyuwRRK62b3Z8km/JnP3cHgorIC
         vCooMjA3u8QSgvuxyvaogNvQuVrBMzBzU7VHWY/BsYanPQgISDn8SVB/OCnzxN/3tFLn
         4FeZqzgQIv87NK35+bFbhwFmATQ/REodxiy59nlZxfY4w5JcjEDgMxmnSuKpjF5IMKkm
         hrHw==
X-Gm-Message-State: ACgBeo3upjsz0vKfUcJEALPCFTuSUPE58lAmFfmYu3QvHa44EvbKRU+6
        y7rsfBy+jnHL/i5TvAoZerb4FsL8RFEUBUXiXGA=
X-Google-Smtp-Source: AA6agR4MV7Cb8ZH+ilVKxug7mMcWB0a22nqaUcgxBjaEBh6SefCxiw/OEhWUT07BebNp0570PL+UH4eDPQUudFKiMYc=
X-Received: by 2002:a05:6130:c13:b0:39f:58bb:d51c with SMTP id
 cg19-20020a0561300c1300b0039f58bbd51cmr1596222uab.104.1662571209329; Wed, 07
 Sep 2022 10:20:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:f6d9:0:0:0:0:0 with HTTP; Wed, 7 Sep 2022 10:20:09 -0700 (PDT)
Reply-To: maryalbert00045@gmail.com
From:   Mary Albert <alassisidemion@gmail.com>
Date:   Wed, 7 Sep 2022 18:20:09 +0100
Message-ID: <CAG8=Qai3rz0ankW185=uNcR8bNjELkdeQeb37k+ZMTeO1LfPuw@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

-- 
Hello,
how are you?
