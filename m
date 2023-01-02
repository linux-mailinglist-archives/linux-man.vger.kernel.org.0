Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D4FA65B3C0
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 16:06:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235785AbjABPGa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 10:06:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229740AbjABPG3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 10:06:29 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AE2D194
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 07:06:28 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id m26-20020a05600c3b1a00b003d9811fcaafso14193308wms.5
        for <linux-man@vger.kernel.org>; Mon, 02 Jan 2023 07:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n76r4xGxk8aLvZnrY8wncwbhfTWiAfwSmM6xGVOMPic=;
        b=p5CWKaIAYfOxMvVY0IlYzuWH3sipzOGJhO5DNiUTsP8bGYBvZLpP5nxkayGXxKpkdr
         iui3uoxrX5vlqoUZaIfoEycZrsxkh4OOBfDizZJUlG5fiwlcnLem79PX2JK6i0yEs6NP
         tW31ZSdUEmX92gIT73l6lVwKNmLT0wxkxZbKlEQ++VkIm8OGcvo1jDXex1d1/R+GMRKl
         nxr2vesTR7oQxTfGVe+yJe/M5/F0fFOsqr5sKubOjWKHP4GcrkDJJmi/nBqS4YnodlXl
         ExVYh/Nz8nOjOI1TIeqB8z47vNlzhWV4DJrb3rvtXRR8XJMebOG/Fs4pvXUQGJ3043dv
         EAcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n76r4xGxk8aLvZnrY8wncwbhfTWiAfwSmM6xGVOMPic=;
        b=dhfTbhUNgLfDUB8XbGnwpSbXtKK1QIiIeejDtEXl0sPwgZ+92cK3QJUfFz1/aq3L9n
         6uKD6wrGZ+yeJEZIUAhoXw1vOl8Q4CTdIZfI+NlqPPuNtb/nhiJ5p8lct9UxU7Pq3Y4w
         C5B5xucWBAMRXHlEtoGvrv1bBn2kKE/eNVBF/sJ0cHS9uxVIqFrWEyAiPoNpmbDxbh0a
         dQRWuWOeKm3reAarDWr4qeg8thSmWPxUBvcCyEhszVqtkfr7UZCVyY45kzjCYhqUJhfE
         EhoYJSOFg9gKZ3ALY+qA82WaQ58pZRoZiwvNvU1mRwjLdj30kNHjTkduO8abHdweR2TC
         TgVA==
X-Gm-Message-State: AFqh2koD1995pc3O6vGcALah0kr6XkaeFTwEfNOFlLavSDhGbwBxK8a8
        gbApCe84L84n5h1JXxxI9gM=
X-Google-Smtp-Source: AMrXdXvf9SzqwbFznf0kl6GjGKrscdCvEauo7+gOpnFeR+PgXlNQmeWPLuSxb76FJS6uefFiTtipWQ==
X-Received: by 2002:a05:600c:3789:b0:3d1:f234:12cc with SMTP id o9-20020a05600c378900b003d1f23412ccmr29979496wmr.33.1672671986802;
        Mon, 02 Jan 2023 07:06:26 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r15-20020a0560001b8f00b002709e616fa2sm28705858wru.64.2023.01.02.07.06.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 07:06:26 -0800 (PST)
Message-ID: <3bfee28b-ae8c-fc41-58b0-cb240c3af0b6@gmail.com>
Date:   Mon, 2 Jan 2023 16:06:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/4] intro.3: tfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230102142333.3hfk2quub25gg4ts@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230102142333.3hfk2quub25gg4ts@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8GytgTVXtn5wdaM0gkfyHbJx"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8GytgTVXtn5wdaM0gkfyHbJx
Content-Type: multipart/mixed; boundary="------------bagzvi3oGqf19IdkRldTJ0CI";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <3bfee28b-ae8c-fc41-58b0-cb240c3af0b6@gmail.com>
Subject: Re: [PATCH 1/4] intro.3: tfix
References: <20230102142333.3hfk2quub25gg4ts@illithid>
In-Reply-To: <20230102142333.3hfk2quub25gg4ts@illithid>

--------------bagzvi3oGqf19IdkRldTJ0CI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS8yLzIzIDE1OjIzLCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiAtLS0NCg0KUGxlYXNlIHNpZ24gdGhlIHBhdGNoZXMuDQoNCkkgYXBwbGllZCB0
aGlzIG9uZSwgc2luY2UgaXQgaXMgdHJpdmlhbC4gIEknbGwgY29tbWVudCBvbiB0aGUgb3Ro
ZXJzLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAgIG1hbjMvaW50cm8uMyB8IDIgKy0NCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9tYW4zL2ludHJvLjMgYi9tYW4zL2ludHJvLjMNCj4gaW5kZXggYjA4
ZWNhNWFjLi5lODVjMDY3N2EgMTAwNjQ0DQo+IC0tLSBhL21hbjMvaW50cm8uMw0KPiArKysg
Yi9tYW4zL2ludHJvLjMNCj4gQEAgLTg5LDcgKzg5LDcgQEAgVG9nZXRoZXIsDQo+ICAgdGhl
c2UgYXJlIHRlcm1lZCBhbiBBUEkgb3INCj4gICAuSVIgImFwcGxpY2F0aW9uIHByb2dyYW0g
aW50ZXJmYWNlIiAuDQo+ICAgVHlwZXMgYW5kIGNvbnN0YW50cyB0byBiZSBzaGFyZWQgYW1v
bmcgbXVsdGlwbGUgQVBJcw0KPiAtc2hvcHVsZCBiZSBwbGFjZWQgaW4gaGVhZGVyIGZpbGVz
IHRoYXQgZGVjbGFyZSBubyBmdW5jdGlvbnMuDQo+ICtzaG91bGQgYmUgcGxhY2VkIGluIGhl
YWRlciBmaWxlcyB0aGF0IGRlY2xhcmUgbm8gZnVuY3Rpb25zLg0KPiAgIFRoaXMgb3JnYW5p
emF0aW9uIHBlcm1pdHMgYSBDIGxpYnJhcnkgbW9kdWxlDQo+ICAgdG8gYmUgZG9jdW1lbnRl
ZCBjb25jaXNlbHkgd2l0aCBvbmUgaGVhZGVyIGZpbGUgcGVyIG1hbnVhbCBwYWdlLg0KPiAg
IFN1Y2ggYW4gYXBwcm9hY2gNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------bagzvi3oGqf19IdkRldTJ0CI--

--------------8GytgTVXtn5wdaM0gkfyHbJx
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOy8vEACgkQnowa+77/
2zIFkg//QOdsDnMSmKiKQT6V7cQbKJ1QnsD1mOJznehpFfVhyiUcj7RlcdSyZ+03
mGUMgdD2IbRKS5dmvpl0+M1eH3RlPtvT+VqOrfjpOLBACFDSnVvOEz338ZHUjihj
BnaOhCYHXjLqxuVPctxbkgw7/9vKetd73JNPFbKkHusC+iPs9NTaRmx6E+BC6pRy
3q61Eo3+g7dfPySkeDB80WPx51/vZwDS1tmMiQ5JDEoA4CKaeoNlOABRzw1tKuUS
p8mr+iGfqBOF5DHCp60INkgP9pGolFuUE5VgDc4pVn0YDwUCxpbvwP1Lg9PJJJDA
4UqMHN35vpxvKxta3eZSmfI7nFnp643BjaDAh4RykPEzH+w8UGM3dxdcEMcJELzf
KlWaBuqgBqadXTNMgxCdbZtl9YNNtLZVgZ5y3k4rQFH2jImav2TXCkjecH4cSMEU
vWG1T+boW23FGiFMd6Q7of+qVfeCG5y46Kl1M6KHjogh22TOFXR14hmvax2xSHTU
NA4CWue/nTo273hNRExL1e5/H5IoEv/LBawf0CmJ6MdJxbrdmJWXd/cvC8zeFPMm
tbJtboQfi9ZhjzyJ0BhoQcTbn71uUWnnj1aEem26RGgyMjolAcRngXXgjpMUcIcK
kNCDLOyR190kz32WD3bJkDIYYs6u3ClNuKBJ6aUCX1ax1klTKXE=
=wq5o
-----END PGP SIGNATURE-----

--------------8GytgTVXtn5wdaM0gkfyHbJx--
