Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B90525BD29C
	for <lists+linux-man@lfdr.de>; Mon, 19 Sep 2022 18:55:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229842AbiISQzI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Sep 2022 12:55:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbiISQzF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Sep 2022 12:55:05 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92894BC8B
        for <linux-man@vger.kernel.org>; Mon, 19 Sep 2022 09:55:03 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id j16so20907464lfg.1
        for <linux-man@vger.kernel.org>; Mon, 19 Sep 2022 09:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=J/2W4uZm+VgLpkFSIqxPafi8snW5+sSYQguuD3P6WA8=;
        b=K8HoI2qD1pISbtJIrjom7aNoNk8w8jh4K27wkK7dqo0aDocCk9ffYUGr5kJqzlqJRM
         SN0RogEUqYcfolsNRoteyhCjcN9MuF+SILA1hPWk3zkTNlyxYSWcNCbi0EUhCinsHPu8
         VEvNPJsPu4nmUEE0h7+3dR2czaLKb3QnPDrPsW22UX5Szkj6/A1KPRNOwCbCUO7SFPt/
         b99vOgEJAuzDgI7Yf/csDlDRPpqresPTde+tnYO/sk8EdMUMXHTKiaQPz9juE+SFl855
         avJt9AKwzi0w0T+cvxl1ndimzThSDcLUKWrCVpQKcpI85R4M9Q0wAl1lhPJ+GWONCU1u
         P90g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=J/2W4uZm+VgLpkFSIqxPafi8snW5+sSYQguuD3P6WA8=;
        b=PLYpQBYgrBE+6eFUoQscQwbPFrBzgxmwYTI58Ug6mkz/jmulPN50x5ETjOM/VITuPq
         syf6FvXwhwL46g2z3zj33RngVz+in4Iv8KbVOw2fJR5eD9l7+0qgsmNr2X+kZrEars6c
         6ZKAe+Ik6vNNHztTN/R1J9QoPQk1Bvgx09j2M/nGTPUhv6RTs5sEf3YH7cUpDwVn6fiW
         6E/MlAuP9CGqW7M/bnC06CdizJ8U/FCZv+ibpB8QL71KLbjkZCkoekAnkB27FgBOtbU/
         vtrr2E0SFTOHfbMa6BdssDihT+xYL+c2O4eWn1rSquUKdniJn/3URY0/LWrWZhaBpx8H
         umow==
X-Gm-Message-State: ACrzQf1pQuLw+GoTwnK4VGqYMoIJUOdHw0B6QdvWFcP+3jGuCgQJUPTE
        WtlVcfCTII1zV40XwLJt45x0aVVZkzOVaw==
X-Google-Smtp-Source: AMsMyM5vW44cesW9v2nAsHuFxNbOXohqAGK7tmZVM63Nr22NdbRzrP0OKK8etph0RG9VdZkb5MYWmw==
X-Received: by 2002:a05:6512:22c6:b0:498:fff7:b57f with SMTP id g6-20020a05651222c600b00498fff7b57fmr6278606lfu.582.1663606501811;
        Mon, 19 Sep 2022 09:55:01 -0700 (PDT)
Received: from dell7760.lan ([31.169.55.19])
        by smtp.googlemail.com with ESMTPSA id m11-20020ac24acb000000b0049496855494sm5263815lfp.104.2022.09.19.09.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:55:01 -0700 (PDT)
From:   Alex Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alex Colomar <alx.manpages@gmail.com>
Subject: [RFC v3 0/4] Document <printf.h>
Date:   Mon, 19 Sep 2022 18:54:52 +0200
Message-Id: <20220919165456.28289-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220918221640.19942-1-alx.manpages@gmail.com>
References: <20220918221640.19942-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

I finally got it working properly, so the documentation for
register_printf_specifier(3) should be quite complete.

Cheers,

Alex

---

v3: Fix the example, and add more details to the page.

Alex Colomar (4):
  printf.3head: Document functions for customizing printf(3)-like
    functions
  register_printf_specifier.3, register_printf_modifier.3,
    register_printf_type.3: Add links to printf.h(3head)
  printf_arginfo_size_function.3type, printf_function.3type,
    printf_info.3type, printf_va_arg_function.3type: Add links to
    printf.h(3head)
  PA_CHAR.3const, PA_DOUBLE.3const, PA_FLAG_LONG.3const,
    PA_FLAG_LONG_DOUBLE.3const, PA_FLAG_LONG_LONG.3const,
    PA_FLAG_PTR.3const, PA_FLAG_SHORT.3const, PA_FLOAT.3const,
    PA_INT.3const, PA_LAST.3const, PA_POINTER.3const, PA_STRING.3const,
    PA_WCHAR.3const, PA_WSTRING.3const: Add links to printf.h(3head)

 man3/register_printf_modifier.3             |   1 +
 man3/register_printf_specifier.3            |   1 +
 man3/register_printf_type.3                 |   1 +
 man3const/PA_CHAR.3const                    |   1 +
 man3const/PA_DOUBLE.3const                  |   1 +
 man3const/PA_FLAG_LONG.3const               |   1 +
 man3const/PA_FLAG_LONG_DOUBLE.3const        |   1 +
 man3const/PA_FLAG_LONG_LONG.3const          |   1 +
 man3const/PA_FLAG_PTR.3const                |   1 +
 man3const/PA_FLAG_SHORT.3const              |   1 +
 man3const/PA_FLOAT.3const                   |   1 +
 man3const/PA_INT.3const                     |   1 +
 man3const/PA_LAST.3const                    |   1 +
 man3const/PA_POINTER.3const                 |   1 +
 man3const/PA_STRING.3const                  |   1 +
 man3const/PA_WCHAR.3const                   |   1 +
 man3const/PA_WSTRING.3const                 |   1 +
 man3head/printf.h.3head                     | 559 ++++++++++++++++++++
 man3type/printf_arginfo_size_function.3type |   1 +
 man3type/printf_function.3type              |   1 +
 man3type/printf_info.3type                  |   1 +
 man3type/printf_va_arg_function.3type       |   1 +
 22 files changed, 580 insertions(+)
 create mode 100644 man3/register_printf_modifier.3
 create mode 100644 man3/register_printf_specifier.3
 create mode 100644 man3/register_printf_type.3
 create mode 100644 man3const/PA_CHAR.3const
 create mode 100644 man3const/PA_DOUBLE.3const
 create mode 100644 man3const/PA_FLAG_LONG.3const
 create mode 100644 man3const/PA_FLAG_LONG_DOUBLE.3const
 create mode 100644 man3const/PA_FLAG_LONG_LONG.3const
 create mode 100644 man3const/PA_FLAG_PTR.3const
 create mode 100644 man3const/PA_FLAG_SHORT.3const
 create mode 100644 man3const/PA_FLOAT.3const
 create mode 100644 man3const/PA_INT.3const
 create mode 100644 man3const/PA_LAST.3const
 create mode 100644 man3const/PA_POINTER.3const
 create mode 100644 man3const/PA_STRING.3const
 create mode 100644 man3const/PA_WCHAR.3const
 create mode 100644 man3const/PA_WSTRING.3const
 create mode 100644 man3head/printf.h.3head
 create mode 100644 man3type/printf_arginfo_size_function.3type
 create mode 100644 man3type/printf_function.3type
 create mode 100644 man3type/printf_info.3type
 create mode 100644 man3type/printf_va_arg_function.3type

-- 
2.37.2

