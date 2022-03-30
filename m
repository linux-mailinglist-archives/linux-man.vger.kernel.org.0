Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D64D44EBB27
	for <lists+linux-man@lfdr.de>; Wed, 30 Mar 2022 08:52:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243451AbiC3Gy0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Mar 2022 02:54:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243450AbiC3GyY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Mar 2022 02:54:24 -0400
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5FF6B6E66
        for <linux-man@vger.kernel.org>; Tue, 29 Mar 2022 23:52:36 -0700 (PDT)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-dee0378ce7so10831036fac.4
        for <linux-man@vger.kernel.org>; Tue, 29 Mar 2022 23:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=/dGVFug2C26buZoBC7WX2nst8ihb6F3XEwupdhlFgYk=;
        b=i+05zz3eFqjX+MYxMxA84NPPaHtM90eP3RoszNY+ad7FhaFKCOPvacBx4vcMDW+nU1
         qkZT52Zg4xry3GlW2zIkj3l/dGYbRq4dekVzTwTrzI5EClbeTMjCbfNs7K5e9pNHHLRu
         k5vA0/EuerNhZigon4ws+rpg5onDK8S8wB8ynoYMQ9QGa2Z2NZhzbwTLcbrX+edFUtFZ
         uXSHC1wkpv2mdifKl2RuaNbTqKff51Al6uRh2jW5j8ttOvrRPOx3tK8YxXYqqzb/E7Cy
         uDUHoRHprk8Ux+G+nAzF4u8LvFZmiVc8f2oZVYHOEyAoIFJuTyKupsjySZiWU+UbhTpM
         scoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=/dGVFug2C26buZoBC7WX2nst8ihb6F3XEwupdhlFgYk=;
        b=qnS0AiSKDbUG/ErI7EGBsEdSgHZg1VRgl4KbhM5Jsm79m4fA8aPfoYe+ECr08GLYbD
         0LqiGZ6iaVUqjVyURHq2JLt3Ir5B/NASGdjRm1ZdFYNvLQOkIUQiGkWgPPQsQ19iioPD
         werKwaX+ffPoEhW7A7usmc5DL5qXA43iOAE8jtnXQ+j9HBDXafcfvSSNcgTqArwiyAqS
         McPajlHly9M1jvgaRWfxgPrzKuys7pOv1wuB61g8J59sW+kXVv31Mjvx37IaU5SpV7P7
         GKUsmr4rtZyI4no7h/2jdXKaEJ0NR+5oKjIsdZbegWBG2RgujzHuGTOyw/fMf6B0XlJ4
         dV0g==
X-Gm-Message-State: AOAM530214mtzH9pUw3k6HeoJpsnLx0prZvOSnnscGoYwneGkjWuq0/0
        Wv2Rnab9wzYzEo9waCMLy28cY2cse1HuFFXxxp/hivmaaZVnMQ==
X-Google-Smtp-Source: ABdhPJyk7mqVRbmdYZ/8DjyYjSnDPmXs5zEzVu1m7JSxMm0O1mQC+5hStmzMG4Vz4b7QfOwwwanMsOD74CTHxNSnLRI=
X-Received: by 2002:a05:6870:42cc:b0:dd:a03f:195e with SMTP id
 z12-20020a05687042cc00b000dda03f195emr1583556oah.234.1648623155716; Tue, 29
 Mar 2022 23:52:35 -0700 (PDT)
MIME-Version: 1.0
From:   Varun Vaishnav <gamelovr695@gmail.com>
Date:   Wed, 30 Mar 2022 12:22:24 +0530
Message-ID: <CAPAxGYY8H8MXF0kT5SQsrf+e95wqt4pSQ-5rngte2EYx+5fmjg@mail.gmail.com>
Subject: Typo in shmctl man page
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Greetings, I have found a small typo in man page for shmctl,
man version : man 2.9.4
OS: Ubuntu 21.10
I checked the online man page also, the typo exists there.
In the description for shm_dtime, there is a misspelled "this", it's
typed as "tgis".

Regards,
Varun Vaishnav
