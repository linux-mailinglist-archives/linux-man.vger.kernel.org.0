Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B8E9779CEA
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 05:04:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233345AbjHLDEa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Aug 2023 23:04:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229808AbjHLDEa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Aug 2023 23:04:30 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1040D30E8
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 20:04:26 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1c4cd0f6cb2so528fac.0
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 20:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691809465; x=1692414265;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=52evG5MEE2+b3H294dVu84WdyecRfCRM6ds/ZCH0ieA=;
        b=fVum/Y8kPTBMzj+CCxHnEYT29HSwHsOLda0o+VHf9o1jqFJ+pWLXLCT+F4tYsU4dDk
         y/+m6N618W3EkEFbZ1IpwhLkitWiSqWKmFAWyrV+vXJuiR7KtVIT4GEsK1Ted5kgKAdS
         x03Psl+LW6TaoDJGxsHT4M9tlkTjSQgLcIwfeYBk5umXHtwoewVomQ/hWPbNvQMthhxq
         941MGJlWmP3TeEd9hnWaSWeoV/5xFFHE9UVU3keLXI69Xa9dF+Wt9rXJYJlTCYKxy9+o
         lhrxhwbgCtrtV16GUZ3ByWbVpagzi2M//Oiy/t0i4kyDvV/ZuBf2aoC2GUDpWemO1C65
         oM/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691809465; x=1692414265;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=52evG5MEE2+b3H294dVu84WdyecRfCRM6ds/ZCH0ieA=;
        b=htGWv8aQp3NaObqyzAB6lUcnge8fG3wxfpS8sRHHAwbRrKGKcdUzVNk33Z1PFejMyA
         W156zD9QZ+JnVD27g0lyEW32POlUSet/DWaqvhVze6PM/GqcG4LMwXRqUMZ0/m3KeUa3
         PeNRKAtAvyr5VmMIFV20REY3Erp0REyGWyqwaG9HHvPyWWVtaRMd94u3sqopU9JLedhk
         Pwy03EprJ+Mj9PtADmYDfbGxovMKLU4LurgygUW8taAK1NZe+bJWnbH50GhQTB3VqdjB
         +cAtZ+TsXJEPZ1dJ2F/nZm6xryOC6D/WO5cjEYAE6K4UYL+FwOHDNL4VXnMMLgUrz89E
         gm3Q==
X-Gm-Message-State: AOJu0Ywh1fWMpZ4Yr20mhQiR1hw59G7qNuxyWE/yH6QGgjmoyzSRsb4S
        qn7sKL8o3wsGZRN3K4CRU8Y=
X-Google-Smtp-Source: AGHT+IFAPoi0r5zjtCd3ZsNXqmwGZTAkRjLzh8x+07NWgp4Dsnx+GqiYdoxUdup/oZAxrHllXILnJg==
X-Received: by 2002:a05:6870:47a8:b0:1b4:4c6d:765c with SMTP id c40-20020a05687047a800b001b44c6d765cmr4001363oaq.26.1691809465248;
        Fri, 11 Aug 2023 20:04:25 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v10-20020a9d7d0a000000b006b87f593877sm2222907otn.37.2023.08.11.20.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 20:04:24 -0700 (PDT)
Date:   Fri, 11 Aug 2023 22:04:23 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>, Brian.Inglis@shaw.ca,
        linux-man@vger.kernel.org
Subject: Re: No 6.05/.01 pdf book available
Message-ID: <20230812030423.bnsvm2agzi5oqgo5@illithid>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
 <21975186.EfDdHjke4D@pip>
 <2591b315-4bd0-79d2-af09-05ea3838445d@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="77u3yr5vpyf5jfef"
Content-Disposition: inline
In-Reply-To: <2591b315-4bd0-79d2-af09-05ea3838445d@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--77u3yr5vpyf5jfef
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2023-08-12T01:51:31+0200, Alejandro Colomar wrote:
> But, I installed groff from git HEAD a moment ago, and I didn't notice
> the 5 MiB improvements that you claimed, and the page numbers are
> wrong, so maybe I'm doing something wrong, or have a non-clean groff
> installation in place?

Deri's working on a branch.

https://git.savannah.gnu.org/cgit/groff.git/log/?h=deri-gropdf-ng

Regards,
Branden

--77u3yr5vpyf5jfef
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTW9rAACgkQ0Z6cfXEm
bc5cfBAAoKVOd0t5AUJsk98FhuTnMcl8Iyngr8J7oj0NAWFLe3fNk9JhGcjrxxEx
3pSSGhG28DHVbTS3IQSLSgK0y4X6LvkK1NUKmLNURsGEV+1YmJfH/osDpUi16VpD
orUEuIbgtPx870DV7/S0kNu6R47I8xx54K9cJTbMNFhPMBpb5OkPXKOA2Sev4d3C
5ut5ZcrV68FOl0xyQcb3O3JH1X9EEBqH0Ohvw/L0Jf1X241U+0VOr5ZFIFF9Hqhc
T4yEYfAlhySk9Vo0pAa2n/G65D2HasG6t36oq3nQfdPQZbSSZUqdnPi2ThTLg+pq
VZ7Xokj2Pyj+xbQYjvad/Tnit80esj7i0crPPuK5IE9Th02GK/d/YBP2FkFE3uik
XO5rk458nTftB5FJNzHWDqH4YIKr070keGXSD2y9X5y615hyEiw24pzaEDxGAGMX
gaK4MG141CoY//wweekB4iQf78momdza4ipBOrjYhT/cuiqilYBIyhd5EAlyi8rO
BDBq2rNgljwVB0JhpAH6F/1K2oMpZziDiqkfOiI4StzYt4WWHKTCoGYekoWKadD3
D0EtRYgeDUXAwgwg+2WipwBi5oHPXTtFRYPX9TDyFPp/EaZ6QonIEik+aUaJQ5u8
ToKYNaf3PIeSzU4TbSz/j893O9xd+usnOC9xUnZ2wTp321sf/Ck=
=IH0n
-----END PGP SIGNATURE-----

--77u3yr5vpyf5jfef--
